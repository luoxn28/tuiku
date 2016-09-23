package com.tuiku.service;

import com.tuiku.dao.OpenClass;
import com.tuiku.dao.OpenClassDao;
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
 * OpenClassService - 公开课服务类
 */
@Controller
@RequestMapping
public class OpenClassService {

    @Autowired
    OpenClassDao openClassDao;

    /**
     * 公开课服务
     */
    @RequestMapping("/openclass")
    public String openClass(HttpServletRequest request, Map<String, Object> map) {
        // 登录检测
        AuthenticationUtil.hasCookieAndSession(request, map);

        List<OpenClass> openClasses = openClassDao.getAll();

        map.put("openClasses", openClasses);

        return "openclass";
    }

    @RequestMapping("openclassadd")
    public String openClassAdd(@RequestParam(value="name")String name, @RequestParam(value="brief")String brief,
                               @RequestParam(value="url")String url, HttpServletRequest request,
                               HttpServletResponse response, Map<String, Object> map) {
        // 登录检测
        User user = AuthenticationUtil.getUserByCookieAndSession(request, map);
        if (user == null || !user.getAdmin().equals("admin")) {
            map.put("info", "你好，你还未登录或者你不是管理员，3秒中后跳转到登录页面");
            response.addHeader("refresh", "3;url=" + request.getContextPath() + "/login");
            return "info";
        }

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = format.format(new Date());
        OpenClass openClass = new OpenClass(name, url, brief, date, user.getId());

        openClassDao.insert(openClass);
        System.out.println(openClass);

        return "redirect:/openclass";
    }

}
