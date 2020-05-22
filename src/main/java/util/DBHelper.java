package util;

import model.User;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBHelper {

    Properties properties = PropertyReader.readProperties();

    private static DBHelper instance;

    private DBHelper() {

    }

    public static DBHelper getInstance() {
        if (instance == null) {
            instance = new DBHelper();
        }
        return instance;
    }

    private static SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            try {
                Configuration configuration = new Configuration();
                configuration.addAnnotatedClass(User.class);
                configuration.setProperty("hibernate.dialect", properties.getProperty("db.dialect"));
                configuration.setProperty("hibernate.connection.driver_class", properties.getProperty("db.driver"));
                configuration.setProperty("hibernate.connection.url", properties.getProperty("db.host"));
                configuration.setProperty("hibernate.connection.username", properties.getProperty("db.user"));
                configuration.setProperty("hibernate.connection.password", properties.getProperty("db.password"));
                configuration.setProperty("hibernate.show_sql", properties.getProperty("db.hibernate.show_sql"));
                configuration.setProperty("hibernate.hbm2ddl.auto", properties.getProperty("db.hibernate.hbm2ddl.auto"));

                ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                        .applySettings(configuration.getProperties()).build();

                sessionFactory = configuration.buildSessionFactory(serviceRegistry);

            } catch (Exception e) {
                System.err.println("Initial SessionFactory creation failed." + e);
            }
        }
        return sessionFactory;
    }

    private static Connection connection = null;

    public Connection getConnection() {
        if (connection == null) {

            StringBuilder url = new StringBuilder();

            url.
                    append(properties.getProperty("db.host")).
                    append("&user=" + properties.getProperty("db.user")).
                    append("&password=" + properties.getProperty("db.password"));
            try {
                Class.forName(properties.getProperty("db.driver"));
                return DriverManager.getConnection(url.toString());
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return connection;
    }
}