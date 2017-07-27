package by.dao;


import by.model.Role;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoleDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Role getRoleById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Role role = (Role) session.get(Role.class, new Integer(id));
        role.getName();
        return role;
    }

    public List<Role> roleList(){
        Session session = this.sessionFactory.getCurrentSession();
        List<Role> list = session.createQuery("from Role ").list();
        return list;
    }
}
