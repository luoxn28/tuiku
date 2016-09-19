package com.tuiku.service;

import com.tuiku.dao.Site;
import com.tuiku.dao.SiteDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

/**
 * SiteService - 站点服务
 */
@Controller
@RequestMapping("/site")
public class SiteService {

    // 站点操作类
    @Autowired
    SiteDao siteDao;

    /**
     * 站点服务
     */
    @RequestMapping
    public String site(Map<String, Object> map) {
        List<Site> sites = siteDao.getAllByCategory(0);

        map.put("sites", sites);

        return "site";
    }

}
