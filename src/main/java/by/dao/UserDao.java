package by.dao;

import by.model.Role;
import by.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Repository
public class UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private RoleDao roleDao;

    public void setRoleDao(RoleDao roleDao) {
        this.roleDao = roleDao;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addUser(User user) {
        Set<Role> roles = new HashSet<>();
        roles.add(roleDao.getRoleById(2));
        user.setRoles(roles);
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
    }

    public List<User> listUser() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> list = session.createQuery("from  User ").list();
        return list;
    }

    public void deleteUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        session.delete(user);
    }

    public User findUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        user.getNickname();
        return user;
    }

    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
    }
}