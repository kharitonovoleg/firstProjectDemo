package by.service;

import by.dao.UserDao;
import by.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService {

    @Autowired
    UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Transactional
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Transactional
    public List<User> listUser() {
        return userDao.listUser();
    }

    @Transactional
    public void deleteUser(int id) {
        userDao.deleteUser(id);
    }

    @Transactional
    public User findUserById(int id) {
        return userDao.findUserById(id);
    }

    @Transactional
    public void updateUser(User user) {
        userDao.updateUser(user);
    }
}
