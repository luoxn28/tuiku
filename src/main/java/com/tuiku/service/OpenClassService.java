package com.tuiku.service;

import com.tuiku.util.AuthenticationUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * OpenClassService - 公开课服务类
 */
@Controller
@RequestMapping
public class OpenClassService {

    @RequestMapping("/openclass")
    public String openClass(HttpServletRequest request, Map<String, Object> map) {
        // 登录检测
        AuthenticationUtil.hasCookieAndSession(request, map);

        return "openclass";
    }

    @RequestMapping("openclassadd")
    public String openClassAdd() {

        return "openclass";
    }

}
