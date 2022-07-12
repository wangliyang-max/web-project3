package com.entity;

import java.sql.Timestamp;
import java.util.Date;



public class News {
   private int id;
   private  String title;
    private String text;
    private int type;
    private Timestamp newsTime;

    public String toString(){
        return "id："+id+"     title："+title+"     text："+text;
    }

    public News(int id, String title, String text, int type, Timestamp newsTime) {
        this.id = id;
        this.title = title;
        this.text = text;
        this.type = type;
        this.newsTime = newsTime;
    }
    public News(int id, String title, String text) {
        this.id = id;
        this.title = title;
        this.text = text;

    }
    public News(int id, String title) {
        this.id = id;
        this.title = title;
        this.text = text;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public Timestamp getNewsTime() {
        return newsTime;
    }

    public void setNewsTime(Timestamp newsTime) {
        this.newsTime = newsTime;
    }
}
