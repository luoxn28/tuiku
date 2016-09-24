package com.tuiku.service;

import com.tuiku.dao.Theme;
import com.tuiku.dao.ThemeDao;
import com.tuiku.dao.User;
import com.tuiku.util.AuthenticationUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * ThemeService - 主题服务类
 */
@Controller
@RequestMapping
public class ThemeService {

    @Autowired
    ThemeDao themeDao;

    /**
     * 主题服务
     */
    @RequestMapping("/theme")
    public String theme(HttpServletRequest request, Map<String, Object> map) {
        AuthenticationUtil.hasCookieAndSession(request, map);

        List<Theme> themes = themeDao.getAllByCategory(0);
        map.put("themes", themes);

        return "theme";
    }

    /**
     * 主题查询服务
     */
    @RequestMapping("/themes")
    public String themes(@RequestParam(value="category")int category, HttpServletRequest request,
                         Map<String, Object> map) {
        // 登录检测
        AuthenticationUtil.hasCookieAndSession(request, map);

        List<Theme> themes = themeDao.getAllByCategory(category);
        map.put("themes", themes);

        return "theme";
    }

    /**
     * 添加站点操作
     */
    @RequestMapping("themeadd")
    public String themeadd(@RequestParam(value="name")String name, @RequestParam(value="brief")String brief,
                           @RequestParam(value="url")String url, @RequestParam(value="category")String category,
                           HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
        // 登录检测
        User user = AuthenticationUtil.getUserByCookieAndSession(request, map);
        if (user == null || !user.getAdmin().equals("admin")) {
            map.put("info", "你好，你还未登录或者你不是管理员，3秒中后跳转到登录页面");
            response.addHeader("refresh", "3;url=" + request.getContextPath() + "/login");
            return "info";
        }

        Theme theme = new Theme(Integer.valueOf(category), name, url, brief);
        themeDao.insert(theme);

        return "redirect:/theme";
    }

}
