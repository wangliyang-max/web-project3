package com.filter;

import com.entity.Admin;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//拦截器

//登录过滤器的意义：
// 1.为了防止没有登录通过路径访问的恶意用户破坏数据。只有通过登录的用户才可以使用功能
//2.如果登陆后，可以通过路径直接进行访问，无需每次进行功能使用都再登陆一次。
@WebFilter(filterName = "loginFilter",urlPatterns="/add")
public class LoginFilter extends HttpFilter {
    ////    获取登陆页面列表
//    private List<String> excludes1 = List.of("/login");
//    private List<String> excludes2 = List.of("/index");
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
////       如果是登陆页面或index就放开拦截，（不是管理员身份也可以进行访问的操作）
//        System.out.println("到达过滤器");
//        for (String e : excludes1) {
//            if (e.equals(req.getServletPath())) {
//                System.out.println("到达过滤器1111111");
//                chain.doFilter(req, res);
//                return;
//            }
//        }
//        for (String e : excludes2) {
//            if (e.equals(req.getServletPath())) {
//                System.out.println("到达过滤器1111111");
//                chain.doFilter(req, res);
//                return;
//            }
//        }
//        获取session，管理员的操作需要登录才能访问
        Admin admin = (Admin) req.getSession().getAttribute("user");
        if (admin != null) {
            System.out.println("到达过滤器2222222");
            chain.doFilter(req, res);
        } else {
            System.out.println("到达过滤器3333333");
            res.sendRedirect(req.getContextPath() + "/login");
        }

    }
}


//   /和/*的区别：（使用/，没有获取到请求？）
// / 会匹配到/login这样的路径型url，不会匹配到模式为*.jsp这样的后缀型url
///* 会匹配所有url：路径型的和后缀型的url(包括/login,*.jsp,*.js和*.html等)
