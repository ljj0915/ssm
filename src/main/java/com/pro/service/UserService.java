package com.pro.service;

import com.pro.domain.User;

import java.util.List;

public interface UserService {
    public List<User> getUsers();
    public void insert(User user);
    public void update(User user);
    public void delete(int userId);
    public User getUser(int userId);
    public List<User> getUsers(int page,int size);
}
