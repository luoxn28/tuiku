package com.tuiku.service;

import com.tuiku.dao.Blog;
import com.tuiku.dao.BlogDao;
import com.tuiku.util.AuthenticationUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * BlogService - 显示博客内容
 */
@Controller
@RequestMapping
public class BlogService {

    // blogDao操作类
    @Autowired
    private BlogDao blogDao;

    @RequestMapping("/blog")
    public String blog(@RequestParam(value="p")int p, HttpServletRequest request,
                       Map<String, Object> map) {

        // 登录检测
        AuthenticationUtil.hasCookieAndSession(request, map);

        if (p > 0) {
            Blog blog = blogDao.getById(p);
            blogDao.updateReadCount(blog.getId(), blog.getReadCount() + 1);
            map.put("blog", blog);
        }
        return ("blog");
    }

}
