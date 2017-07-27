package by.service;

import by.dao.RoleDao;
import by.model.Role;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RoleService {
    private RoleDao roleDao;

    public void setRoleDao(RoleDao roleDao) {
        this.roleDao = roleDao;
    }


    @Transactional
    public List<Role> listRole() {
        return this.roleDao.roleList();
    }

    @Transactional
    public Role getRoleById(int id) {
        return this.roleDao.getRoleById(id);
    }


}
