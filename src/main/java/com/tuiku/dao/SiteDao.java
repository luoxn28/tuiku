package com.tuiku.dao;

import java.util.List;

/**
 * SiteDao - 站点操作类
 */
public interface SiteDao {

    public void insert(Site site);
    public List<Site> getAllByCategory(int category);
    public List<Site> getAll();

}
