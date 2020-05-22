package service;

import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import dao.UserDAO;
import factory.DAOFactory;
import model.User;

import java.sql.SQLException;
import java.util.List;

public class UserService {

    private static final Logger logger = LoggerFactory.getLogger(UserService.class);

    private final UserDAO dao;

    private static UserService userService;

    private UserService() {
        dao = DAOFactory.createFactory().getUserDao();
    }

    public static UserService getInstance() {
        if (userService == null) {
            userService = new UserService();
        }
        return userService;
    }

    public List<User> getAllUsers() {
        try {
            return dao.getAllUsers();
        } catch (SQLException e) {
            logger.error("not get All user", e);
            throw new RuntimeException("not Users");
        }
    }

    public User getUserByName(String name) {
        try {
            return dao.getUserByName(name);
        } catch (SQLException e) {
            logger.error("not user name", e);
            throw new RuntimeException("not name user");
        }
    }

    public User getUserById(Long id) {
        try {
            return dao.getUserById(id);
        } catch (SQLException e) {
            logger.error("not user id", e);
            throw new RuntimeException("not name id");
        }
    }

    public void updateUser(User user) {
        try {
            dao.updateUser(user);
        } catch (SQLException e) {
            logger.error("not update user", e);
        }
    }

    public void saveUser(User user) {
        try {
            dao.saveUsers(user);
        } catch (SQLException e) {
            logger.error("not  save user", e);
        }
    }

    public void deleteUser(User user) {
        try {
            dao.deleteUser(user);
        } catch (SQLException e) {
            logger.error("not delete user", e);
        }
    }

    public boolean validateUser(String name, String password) {
        try {
            User user = userService.getUserByName(name);
            return user.getPassword().equals(password);
        } catch (RuntimeException e) {
            return false;
        }
    }
}