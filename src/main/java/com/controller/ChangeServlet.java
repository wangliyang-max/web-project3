package com.controller;

import com.entity.News;
//import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/change")
public class ChangeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        先显示所有新闻标题，方便选择
        List<News> news = new ArrayList<>();
        String url="jdbc:mysql://localhost:3306/webproject";
        String userName="root";
        String password="0303.yang";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql1 = "select * from news";
        try(
//                Connection conn = DataSourceUtils.getConnection();
                Connection conn= DriverManager.getConnection(url,userName,password);
                PreparedStatement st = conn.prepareStatement(sql1);
        ){
            try(ResultSet rs = st.executeQuery();){
                while (rs.next()) {
                    News notice = new News(rs.getInt("id"), rs.getString("title"));
                    news.add(notice);
                }
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        req.setAttribute("news",news);

        req.getRequestDispatcher("/WEB-INF/jsp/change.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        getParameter获取前端元素,通过名字获取对应的值（键值对方法）
        int newsId = Integer.parseInt(req.getParameter("nid"));
        String newsText = req.getParameter("text");

        String sql = "update news set text = ? where id = ?";
        String url="jdbc:mysql://localhost:3306/webproject";
        String userName="root";
        String password="0303.yang";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try(
//                Connection conn = DataSourceUtils.getConnection();
            Connection conn= DriverManager.getConnection(url,userName,password);
            PreparedStatement st = conn.prepareStatement(sql)){
            st.setString(1, newsText);
            st.setInt(2,newsId);
            st.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        req.getRequestDispatcher("/WEB-INF/jsp/change.jsp").forward(req,resp);
    }
}
