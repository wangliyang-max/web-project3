package com.controller;

import com.entity.News;
//import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet("/allNews")
public class AllNewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException {

        ArrayList<News> news1=new ArrayList<>();
        String url="jdbc:mysql://localhost:3306/webproject";
        String userName="root";
        String password="0303.yang";
        String sql1="select * from news where type=1";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (
//                Connection conn = DataSourceUtils.getConnection();
                Connection conn= DriverManager.getConnection(url,userName,password);
                PreparedStatement st=conn.prepareStatement(sql1);
                ResultSet re=st.executeQuery()){
            while(re.next()){
                News notice1=new News(re.getInt("id"),re.getString("title"),re.getString("text"),re.getInt("type"),re.getTimestamp("news_time"));
//                News news1=new News(re.getInt("id"), re.getString("title"), re.getString("text"));
                news1.add(notice1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("news1",news1);

        ArrayList<News> news2=new ArrayList<>();
        String sql2="select * from news where type=2";
        try (
//                Connection conn = DataSourceUtils.getConnection();
                Connection conn= DriverManager.getConnection(url,userName,password);
                PreparedStatement st=conn.prepareStatement(sql2);
                ResultSet re=st.executeQuery()){
            while(re.next()){
                News notice2=new News(re.getInt("id"),re.getString("title"),re.getString("text"),re.getInt("type"),re.getTimestamp("news_time"));
//                News news1=new News(re.getInt("id"), re.getString("title"), re.getString("text"));
                news2.add(notice2);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("news2",news2);

        ArrayList<News> news3=new ArrayList<>();
        String sql3="select * from news where type=3";
        try (
//                Connection conn = DataSourceUtils.getConnection();
                Connection conn= DriverManager.getConnection(url,userName,password);
                PreparedStatement st=conn.prepareStatement(sql3);
                ResultSet re=st.executeQuery()){
            while(re.next()){
                News notice3=new News(re.getInt("id"),re.getString("title"),re.getString("text"),re.getInt("type"),re.getTimestamp("news_time"));
//                News news=new News(re.getInt("id"), re.getString("title"), re.getString("text"));
                news3.add(notice3);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("news3",news3);

        req.getRequestDispatcher("/WEB-INF/jsp/allNews.jsp")
                .forward(req,res);
    }

}
