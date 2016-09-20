package com.tuiku.service;

import com.tuiku.dao.Site;
import com.tuiku.dao.SiteDao;
import com.tuiku.dao.User;
import com.tuiku.util.AuthenticationUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
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
    public String site(HttpServletRequest request, Map<String, Object> map) {
        // 登录检测
        AuthenticationUtil.hasCookieAndSession(request, map);

        List<Site> sites = siteDao.getAllByCategory(0);

        map.put("sites", sites);

        return "site";
    }

    /**
     * 站点查询服务
     */
    @RequestMapping("sites")
    public String about(@RequestParam(value="category")int category, HttpServletRequest request,
                        Map<String, Object> map) {
        // 登录检测
        AuthenticationUtil.hasCookieAndSession(request, map);

        List<Site> sites = siteDao.getAllByCategory(category);

        map.put("sites", sites);

        return "site";
    }

    /**
     * 添加站点操作
     */
    @RequestMapping("siteadd")
    public String siteadd(@RequestParam(value="name")String name, @RequestParam(value="brief")String brief,
                          @RequestParam(value="url")String url, @RequestParam(value="category")String category,
                          HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
        // 登录检测
        User user = AuthenticationUtil.getUserByCookieAndSession(request, map);
        if (user == null || !user.getAdmin().equals("admin")) {
            map.put("info", "你好，你还未登录或者你不是管理员，3秒中后跳转到登录页面");
            response.addHeader("refresh", "3;url=" + request.getContextPath() + "/login");
            return "info";
        }

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = format.format(new Date());
        Site site = new Site(Integer.valueOf(category), name, url, brief, date, user.getId());

        System.out.println(site);
        siteDao.insert(site);

        List<Site> sites = siteDao.getAllByCategory(0);

        map.put("sites", sites);

        return "redirect:/site";
    }

}
