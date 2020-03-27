package com.pro.service;

import com.github.pagehelper.PageHelper;
import com.pro.dao.UserMapper;
import com.pro.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    public List<User> getUsers() {
        return userMapper.getUsers();
    }
    public List<User> getUsers(int page,int size) {
        PageHelper.startPage(page,size);
        return userMapper.getUsers();
    }
    public void insert(User user) {
        userMapper.insert(user);
    }

    public void update(User user) {
        userMapper.update(user);
    }

    public void delete(int userId) {
        userMapper.delete(userId);
    }

    public User getUser(int userId) {
        return userMapper.getUser(userId);
    }
}
