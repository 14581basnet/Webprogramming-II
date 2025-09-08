package com.tripwise.service;

import com.tripwise.model.User;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements com.tripwise.service.UserService {
    private User registeredUser;

    @Override
    public boolean login(String username, String password) {
        return registeredUser != null &&
                registeredUser.getUsername().equals(username) &&
                registeredUser.getPassword().equals(password);
    }

    @Override
    public User register(User user) {
        this.registeredUser = user;
        return user;
    }
}
