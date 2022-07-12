package com.controller;

import com.entity.News;
import com.mysql.cj.protocol.Resultset;
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

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/search.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<News> news = new ArrayList<>();
        String newsTilte = req.getParameter("nName");
        int i=0;
        String sql = "select * from news where title = ?";
        System.out.println("获取到了！！！！！！！！！！！");
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
                PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, newsTilte);
            try (ResultSet re = st.executeQuery()) {
                while (re.next()) {
                    News notice=new News(re.getInt("id"),re.getString("title"),re.getString("text"),re.getInt("type"),re.getTimestamp("news_time"));
                    System.err.println(notice.getId());
                    news.add(notice);
                    i++;
                }
                System.err.println("查找到了 ！！！！！！！！！！！！！！i="+i);
            }

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            req.setAttribute("news",news);
            req.setAttribute("i",i);
            req.getRequestDispatcher("/WEB-INF/jsp/searchResult.jsp")
                    .forward(req, resp);

        }

    }


