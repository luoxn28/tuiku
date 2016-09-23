package com.tuiku.dao;

import java.util.List;

/**
 * OpenClassDao - 公开课操作类
 */
public interface OpenClassDao {

    public void insert(OpenClass openClass);
    public List<OpenClass> getAll();

}
