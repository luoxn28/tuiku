package com.tuiku.service;

import com.tuiku.dao.BlogDao;
import com.tuiku.dao.User;
import com.tuiku.dao.UserDao;
import com.tuiku.util.CookieUtil;
import com.tuiku.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * LoginService - 登录类
 */
@Controller
@RequestMapping
public class LoginService {

    // blogDao操作类
    @Autowired
    private BlogDao blogDao;
    // userDao操作类
    @Autowired
    private UserDao userDao;

    @RequestMapping("/dologin")
    public String dologin(@RequestParam(value="username")String username, @RequestParam(value="password")String password,
                          HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
        boolean loginOk = false;
        User user = userDao.getByName(username);

        if (user != null) {
            if (user.getPassword().equals(password)) {
                map.put("info", "欢迎你: " + username + "，正在跳转到首页");
                response.addHeader("refresh", "1;url=" + request.getContextPath() + "/index");
                loginOk = true;
            }
            else {
                map.put("info", "你好: " + username + "，你输入的密码有误, 3秒后请重新登录");
                response.addHeader("refresh", "3;url=" + request.getContextPath() + "/login");
            }
        }
        else {
            map.put("info", "抱歉，你还未注册，3秒后跳转到首页");
            response.addHeader("refresh", "3;url=" + request.getContextPath() + "/index");
        }

        // 登录成功
        if (loginOk) {
            // 设置cookie
            CookieUtil.setUserCookie(response, user);
            // 添加session
            SessionUtil.addUserSession(request, user);
        }

        return "info";
    }
}
