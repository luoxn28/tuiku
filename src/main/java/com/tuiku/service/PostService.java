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
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/**
 * PostService - 写博客类
 */
@Controller
@RequestMapping
public class PostService {

    @Autowired
    BlogDao blogDao;

    /**
     * 写博客操作
     */
    @RequestMapping("/dopost")
    public String post(HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
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

        String title = request.getParameter("title");
        String text = request.getParameter("editorValue");
        String preview = text.length() > 100 ? text.substring(0, 100) : text;
        String category = request.getParameter("category");
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = format.format(new Date());

        Blog blog = new Blog(Blog.ORIGINAL, title, user.getName(), preview,
                            text, category, date, "", 0, user.getId());
        blogDao.insert(blog);
        System.out.println(blog);

        return "redirect:/index";
    }

}
