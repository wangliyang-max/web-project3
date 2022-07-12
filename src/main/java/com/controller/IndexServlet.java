package com.controller;


import com.entity.News;
//import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //需要先把数据库的信息拿到集合中才能进行输出
        ArrayList<News> news1 = new ArrayList<>();
        String sql1 = "select * from news where type=1";
        String url = "jdbc:mysql://localhost:3306/webproject";
        String userName = "root";
        String password = "0303.yang";

        try (

//                Connection conn = DataSourceUtils.getConnection();
                //本地数据库
                Connection conn = DriverManager.getConnection(url, userName, password);
                PreparedStatement st = conn.prepareStatement(sql1);
                ResultSet re = st.executeQuery()) {
            System.out.println("连接上了吗？ ：" + conn);
            int i1 = 1;
            while (i1 <= 2 && re.next()) {
                News notice1 = new News(re.getInt("id"), re.getString("title"), re.getString("text"), re.getInt("type"), re.getTimestamp("news_time"));
//                News news1=new News(re.getInt("id"), re.getString("title"), re.getString("text"));
                System.out.println(notice1);
                news1.add(notice1);
                i1++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("news1", news1);

        ArrayList<News> news2 = new ArrayList<>();
        String sql2 = "select * from news where type=2";
        try (
//                 Connection conn = DataSourceUtils.getConnection();
                Connection conn = DriverManager.getConnection(url, userName, password);
                PreparedStatement st = conn.prepareStatement(sql2);
                ResultSet re = st.executeQuery()) {
            int i2 = 1;
            while (i2 <= 2 && re.next()) {
                News notice2 = new News(re.getInt("id"), re.getString("title"), re.getString("text"), re.getInt("type"), re.getTimestamp("news_time"));
//                News news1=new News(re.getInt("id"), re.getString("title"), re.getString("text"));
                news2.add(notice2);
                i2++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("news2", news2);

        ArrayList<News> news3 = new ArrayList<>();
        String sql3 = "select * from news where type=3";
        try (
//                Connection conn = DataSourceUtils.getConnection();
                Connection conn = DriverManager.getConnection(url, userName, password);
                PreparedStatement st = conn.prepareStatement(sql3);
                ResultSet re = st.executeQuery()) {
            int i3 = 1;
            while (i3 <= 2 && re.next()) {
                News notice3 = new News(re.getInt("id"), re.getString("title"), re.getString("text"), re.getInt("type"), re.getTimestamp("news_time"));
//                News news=new News(re.getInt("id"), re.getString("title"), re.getString("text"));
                news3.add(notice3);
                i3++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("news3", news3);


        ArrayList<News> news0 = new ArrayList<>();
        String sql0 = "select * from news";
        try (
//                 Connection conn = DataSourceUtils.getConnection();
                Connection conn = DriverManager.getConnection(url, userName, password);
                PreparedStatement st = conn.prepareStatement(sql0);
                ResultSet re = st.executeQuery()) {
            int i0=0;
            while (i0<3&&re.next()) {
                News notice0 = new News(re.getInt("id"), re.getString("title"), re.getString("text"), re.getInt("type"), re.getTimestamp("news_time"));
//                News news1=new News(re.getInt("id"), re.getString("title"), re.getString("text"));
                news0.add(notice0);
                i0++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("news0", news0);

        req.getRequestDispatcher("/WEB-INF/jsp/index.jsp")
                .forward(req, resp);
    }
}
