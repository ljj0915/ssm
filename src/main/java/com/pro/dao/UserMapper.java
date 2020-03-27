package com.pro.dao;

import com.pro.domain.User;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserMapper {
    public List<User> getUsers();
    public void insert(User user);
    public void update(User user);
    public void delete(int userId);
    public User getUser(int userId);
    public List<User> getUsers(int page,int size);
}
