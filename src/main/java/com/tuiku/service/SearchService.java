package com.tuiku.service;

import com.tuiku.dao.Blog;
import com.tuiku.dao.BlogDao;
import com.tuiku.util.AuthenticationUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * SearchService - 搜索服务类
 */
@Controller
@RequestMapping("/search")
public class SearchService {

    // blogDao操作类
    @Autowired
    private BlogDao blogDao;

    @RequestMapping
    public String search(@RequestParam(value="search")String search, HttpServletRequest request,
                         Map<String, Object> map) {
        // 登录检测
        AuthenticationUtil.hasCookieAndSession(request, map);

        List<Blog> blogs = new ArrayList<Blog>();
        blogs = blogDao.getBySearchTitle("%" + search + "%");
        map.put("blogs", blogs);

        return "index";
    }

}
