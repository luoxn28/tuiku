package com.tuiku.util;

import com.tuiku.dao.User;

import javax.servlet.http.HttpServletRequest;

/**
 * SessionUtil - Session脚手架类
 */
public class SessionUtil {

    /**
     * 从request中获取UserId的Session
     */
    public static User getUserSession(HttpServletRequest request, int userId) {
        return (User) request.getSession().getAttribute("user-" + userId);
    }

    /**
     * 往response中设置Session，user-userId = user
     */
    public static void addUserSession(HttpServletRequest request, User user) {
        request.getSession().setAttribute("user-" + user.getId(), user);
    }

    /**
     * 从request中删除UserID的Session
     */
    public static void delUserSession(HttpServletRequest request, int userId) {
        request.getSession().removeAttribute("user-" + userId);
    }
    public static void delUserSession(HttpServletRequest request, String userId) {
        delUserSession(request, Integer.valueOf(userId));
    }

}
