package com.tuiku.dao;

/**
 * OpenClass - 公开课类
 */
public class OpenClass {

    private int    id;       // openclass id
    private String name;     // openclass名称
    private String url;      // openclassurl
    private String brief;    // openclass简介
    private String date;     // openclass编辑日期
    private int    userId;   // openclass编辑用户id

    public OpenClass() {
    }

    public OpenClass(String name, String url, String brief, String date, int userId) {
        this.name = name;
        this.url = url;
        this.brief = brief;
        this.date = date;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "OpenClass{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", brief='" + brief + '\'' +
                ", date='" + date + '\'' +
                ", userId=" + userId +
                '}';
    }

}
