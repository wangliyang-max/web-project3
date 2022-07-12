package com.filter;

import com.entity.Admin;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "deleteFilter",urlPatterns="/delete")
public class deleteFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
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
