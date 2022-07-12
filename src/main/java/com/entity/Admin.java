package com.entity;

import java.util.Date;

public class Admin {
    int id;
    private String name;
    private String password;
    Date insertTime;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }

    public Admin(String name){
        this.name=name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setName(String name){
        this.name=name;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }


}
