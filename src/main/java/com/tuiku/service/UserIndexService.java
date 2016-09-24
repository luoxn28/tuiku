package com.tuiku.service;

import com.tuiku.dao.Blog;
import com.tuiku.dao.BlogDao;
import com.tuiku.dao.User;
import com.tuiku.util.AuthenticationUtil;
import com.tuiku.util.CookieUtil;
import com.tuiku.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * UserIndexService - 用户主页类
 */
@Controller
@RequestMapping
public class UserIndexService {

    // blogDao操作类
    @Autowired
    private BlogDao blogDao;

    @RequestMapping("/userindex")
    public String userIndex(HttpServletRequest request, HttpServletResponse response,
                          Map<String, Object> map) {
        int userId = CookieUtil.getUserCookie(request);
        if (userId <= 0) {
            // 用户还未登录
            map.put("info", "你好，你还未登录，3秒中后跳转到登录页面");
            response.addHeader("refresh", "3;url=" + request.getContextPath() + "/login");
            return "info";
        }
        // 用户已有cookie信息
        User user = SessionUtil.getUserSession(request, userId);
        if (user == null) {
            map.put("info", "你好，你还未登录，3秒中后跳转到登录页面");
            response.addHeader("refresh", "3;url=" + request.getContextPath() + "/login");
            return "info";
        }

        // 登录检测
        AuthenticationUtil.hasCookieAndSession(request, map);

        List<Blog> blogs = new ArrayList<Blog>();
        blogs = blogDao.getByUserId(user.getId());
        map.put("blogs", blogs);

        return "userindex";
    }

}
