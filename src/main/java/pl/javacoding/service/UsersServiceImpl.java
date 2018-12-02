package pl.javacoding.service;

import pl.javacoding.dao.UsersDAO;
import pl.javacoding.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersDAO usersDAO;

    @Override
    @Transactional
    public Users getUser(String username) {
        return usersDAO.getUser(username);
    }
}
