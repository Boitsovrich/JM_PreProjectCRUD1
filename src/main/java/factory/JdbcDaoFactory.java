package factory;

import dao.UserDAO;
import dao.UserJdbcDAO;

public class JdbcDaoFactory extends DAOFactory {

    @Override
    public UserDAO getUserDao() {
        return new UserJdbcDAO();
    }
}