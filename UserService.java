package com.tripwise.service;

import com.tripwise.model.User;

public interface UserService {
    boolean login(String username, String password);
    User register(User user);
}
