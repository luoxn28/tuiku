package com.tuiku.util;

import com.tuiku.dao.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * AuthenticationUtil - 用户认证类
 */
public class AuthenticationUtil {

    public static String check(HttpServletRequest request, HttpServletResponse response,
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

        return "";
    }

    /**
     * 检查是否有用户登录信息
     */
    public static void hasCookieAndSession(HttpServletRequest request, Map<String, Object> map) {
        int userId = CookieUtil.getUserCookie(request);
        if (userId > 0) {
            // 用户已经登录
            User user = SessionUtil.getUserSession(request, userId);
            if (user != null) {
                map.put("user", user);
                if (user.getAdmin().equals("admin")) {
                    map.put("admin", user);
                }
            }
        }
    }

    public static User getUserByCookieAndSession(HttpServletRequest request, Map<String, Object> map) {
        User user = null;

        int userId = CookieUtil.getUserCookie(request);
        if (userId > 0) {
            // 用户已经登录
            user = SessionUtil.getUserSession(request, userId);
            if (user != null) {
                map.put("user", user);
                if (user.getAdmin().equals("admin")) {
                    map.put("admin", user);
                }
            }
        }

        return user;
    }

}
