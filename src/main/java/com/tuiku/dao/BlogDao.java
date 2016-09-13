package com.tuiku.dao;

import java.util.List;

/**
 * BlogDao - 博客操作接口
 */
public interface BlogDao {

    public int insert(Blog blog);
    public int update(Blog blog);
    public int delete(Blog blog);
    public Blog getById(int id);
    public Blog getByTitle(String title);
    public List<Blog> getByCategory(String category);
    public List<Blog> getByUserId(int id);
    public List<Blog> getBySearchTitle(String title);
    public List<Blog> getAll();

}
