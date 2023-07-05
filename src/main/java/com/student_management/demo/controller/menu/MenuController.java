package com.student_management.demo.controller.menu;

import com.student_management.demo.mapper.dataobject.menu.Menu;
import com.student_management.demo.service.menu.MenuService;
import com.student_management.demo.utils.token.JwtTokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;
import java.util.Set;

@RestController
@RequestMapping("/api")
public class MenuController {
    @Resource
    private MenuService menuService;
    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @GetMapping("/menu")
    public Set<Menu> getMenuList(@RequestHeader("Authorization") String authHeader) {
        String token = authHeader.substring(7);
        return menuService.getMenu(jwtTokenUtil.getUsernameFromToken(token));
    }
}