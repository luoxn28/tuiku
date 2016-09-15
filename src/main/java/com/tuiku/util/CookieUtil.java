package com.tuiku.util;

import com.tuiku.dao.User;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * CookieUtil - Cookie脚手架类
 */
public class CookieUtil {

    /**
     * 从request获取userId
     */
    public static int getUserCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("user")) {
                    return Integer.valueOf(cookie.getValue());
                }
            }
        }

        return -1;
    }

    /**
     * 往response中设置Cookie，user=userId
     */
    public static void setUserCookie(HttpServletResponse response, User user) {
        Cookie cookie = new Cookie("user", String.valueOf(user.getId()));
        response.addCookie(cookie);
    }

    /**
     * 删除Sookie
     */
    public static void delUserCookie(HttpServletResponse response) {
        Cookie cookie = new Cookie("user", null);
        cookie.setMaxAge(0);
        response.addCookie(cookie);
    }

}
