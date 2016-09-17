package com.tuiku.service;

import com.tuiku.dao.User;
import com.tuiku.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * RegisterService - 注册服务类
 */
@Controller
@RequestMapping
public class RegisterService {

    @Autowired
    private UserDao userDao;

    @RequestMapping("/doregister")
    public String doregister(@RequestParam(value="username")String name, @RequestParam(value="password")String password,
                             @RequestParam(value="sex")String sex, @RequestParam(value="email")String email,
                             @RequestParam(value="phone")String phone,
                             HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
        String who = request.getParameter("who");
        if (who == null || !who.startsWith("h3c")) {
            map.put("info", "抱歉，你的邀请码错误，请10s后重新注册");
            response.addHeader("refresh", "10;url=" + request.getContextPath() + "/register");
            return "info";
        }

        User user = new User(name, password, sex, email, phone);

        // 用户信息写到数据库
        userDao.insert(user);

        map.put("info", user.getName() + "，你好，组成成功，3s后跳转到登录页面");
        response.addHeader("refresh", "3;url=" + request.getContextPath() + "/login");

        //return "redirect:/index";
        return "info";
    }

}
