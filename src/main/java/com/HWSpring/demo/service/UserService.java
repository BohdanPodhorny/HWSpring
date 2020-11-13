package com.HWSpring.demo.service;


import com.HWSpring.demo.model.User;
import com.HWSpring.demo.repository.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserDAO userDAO;

    @Autowired
    public UserService(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public void save(User user){
        userDAO.save(user);
    }

    public User getById(int id){
        return userDAO.getById(id);
    }

    public List<User> getAllUsers(){
        return userDAO.getAllUsers();
    }

    public void update(User user){
        userDAO.update(user);
    }

    public void deleteById(int id){
        userDAO.deleteById(id);
    }
}
