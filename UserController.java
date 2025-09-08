package com.tripwise.controller;

import com.tripwise.model.User;
import com.tripwise.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/login")
    public String showLoginPage() { return "login"; }

    @PostMapping("/login")
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        Model model) {
        if (userService.login(username, password)) {
            model.addAttribute("username", username);
            return "summary";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    @GetMapping("/register")
    public String showRegisterPage() { return "register"; }

    @PostMapping("/register")
    public String register(@RequestParam String username,
                           @RequestParam String password,
                           @RequestParam String email,
                           Model model) {
        User user = new User(username, password, email);
        userService.register(user);
        model.addAttribute("user", user);
        return "summary";
    }
}
