package com.tuiku.service;

import com.tuiku.util.AuthenticationUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * AdminService - 后台控制类
 */
@Controller
@RequestMapping("/admin")
public class AdminService {

    @RequestMapping("/admin")
    public String admin(HttpServletRequest request, Map<String, Object> map) {
        // 登录检测
        AuthenticationUtil.hasCookieAndSession(request, map);

        return "admin/admin";
    }

}
