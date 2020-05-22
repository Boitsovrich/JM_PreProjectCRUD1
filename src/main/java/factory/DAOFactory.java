package factory;

import dao.UserDAO;
import util.PropertyReader;

import java.util.Properties;

public abstract class DAOFactory {
    public static DAOFactory createFactory() {
        Properties properties = PropertyReader.readProperties();
        try {
            return (DAOFactory) Class.forName(properties.getProperty("daotype")).newInstance();
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        throw new RuntimeException();
    }

    public abstract UserDAO getUserDao();
}