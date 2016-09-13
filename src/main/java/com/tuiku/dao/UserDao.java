package com.tuiku.dao;

/**
 * UserDao - 用户操作类
 */
public interface UserDao {

    public int insert(User user);
    public User getById(int id);
    public User getByName(String name);

}
