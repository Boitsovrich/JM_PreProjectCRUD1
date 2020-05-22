package factory;

import dao.UserDAO;
import dao.UserHibernateDAO;

public class HibernateDaoFactory extends DAOFactory {

    @Override
    public UserDAO getUserDao() {
        return new UserHibernateDAO();
    }
}
