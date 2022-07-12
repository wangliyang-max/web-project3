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

@WebServlet("/news")
public class newsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.err.println("没获取到");
        int newsId = Integer.parseInt(req.getParameter("id"));
        System.err.println(newsId);
        System.err.println("获取到了");

//        News news=null;
        ArrayList<News> news=new ArrayList<>();
        String sql="select * from news where id=?";
        String url="jdbc:mysql://localhost:3306/webproject";
        String userName="root";
        String password="0303.yang";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try (
//                Connection conn = DataSourceUtils.getConnection();
                Connection conn= DriverManager.getConnection(url,userName,password);
                PreparedStatement st=conn.prepareStatement(sql);){
             st.setInt(1,newsId);
             try (ResultSet re=st.executeQuery();){
                 int i=0;
                while(re.next()){
                    i++;
                    News notice=new News(re.getInt("id"),re.getString("title"),re.getString("text"),re.getInt("type"),re.getTimestamp("news_time"));
                    news.add(notice);
                }
                 System.err.println(i);
              }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.err.println("获取到了");
//        System.err.println(notice.getId());

        req.setAttribute("news",news);
        req.getRequestDispatcher("/WEB-INF/jsp/news.jsp")
                .forward(req, resp);
    }

    }
