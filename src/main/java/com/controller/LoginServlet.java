package com.controller;


import com.entity.Admin;
//import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
//    doGET方法获取跳转页面的请求
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/login.jsp")
                .forward(req, resp);
    }
//    doPost方法获取验证用户名密码请求
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String userName = req.getParameter("username");
    String password = req.getParameter("password");
    String url="/login";
//    数据库验证账号密码是否正确

    String sql = "select * from admin where name=? and password=?;";
    String url2="jdbc:mysql://localhost:3306/webproject";
    String userName2="root";
    String password2="0303.yang";
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    try(
//            Connection conn = DataSourceUtils.getConnection();
            Connection conn= DriverManager.getConnection(url2,userName2,password2);
            PreparedStatement st = conn.prepareStatement(sql);)
    {
        st.setString(1,userName);
        st.setString(2,password);
        try(ResultSet rs=st.executeQuery()){
            if(rs.next()){
                System.out.println("登陆成功");
                Admin u = new Admin("WLY");
//                创建Session对象
                req.getSession().setAttribute("user", u);
                url="/add";
            }
        }
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    resp.sendRedirect(req.getContextPath() + url);


//    if ("admin".equals(userName) && "admin".equals(password)) {
//        Admin u = new Admin("2019224337");
//        req.getSession().setAttribute("user", u);
//        url = "/welcome";
//    } else {
//        url = "/login";
//    }
//    resp.sendRedirect(req.getContextPath() + url);
}
}
