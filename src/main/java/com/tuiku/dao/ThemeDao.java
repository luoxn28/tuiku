package com.tuiku.dao;

import java.util.List;

/**
 * ThemeDao - 主题操作类
 */
public interface ThemeDao {

    public void insert(Theme theme);
    public List<Theme> getAllByCategory(int category);
    public List<Theme> getAll();

}
