package com.controller;

//import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.SQLException;

@WebServlet("/add")
public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/add.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        获取前端输入的数据
        String newsTitle = req.getParameter("name");
        String newsText = req.getParameter("text");
//        type是int型，进行转换
        int newsType = Integer.parseInt(req.getParameter("type"));


        String sql = "insert into news(title,text,type)values (?,?,?);" ;
        String url="jdbc:mysql://localhost:3306/webproject";
        String userName="root";
        String password="0303.yang";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try(
//                Connection conn = DataSourceUtils.getConnection();
          Connection conn= DriverManager.getConnection(url,userName,password);
            PreparedStatement st = conn.prepareStatement(sql)){
            st.setString(1, newsTitle);
            st.setString(2, newsText);
            st.setInt(3,newsType);
            st.executeUpdate();
//            System.out.println("数据库语句执行完毕");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        req.getRequestDispatcher("/WEB-INF/jsp/add.jsp").forward(req,resp);

    }

}
