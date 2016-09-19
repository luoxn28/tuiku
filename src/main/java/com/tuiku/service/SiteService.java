package com.tuiku.service;

import com.tuiku.dao.Site;
import com.tuiku.dao.SiteDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * SiteService - 站点服务
 */
@Controller
@RequestMapping
public class SiteService {

    // 站点操作类
    @Autowired
    SiteDao siteDao;

    /**
     * 站点服务
     */
    @RequestMapping("site")
    public String site(Map<String, Object> map) {
        List<Site> sites = siteDao.getAllByCategory(0);

        map.put("sites", sites);

        return "site";
    }

    /**
     * 站点查询服务
     */
    @RequestMapping("sites")
    public String about(@RequestParam(value="category")int category, Map<String, Object> map) {
        List<Site> sites = siteDao.getAllByCategory(category);

        map.put("sites", sites);

        return "site";
    }

}
