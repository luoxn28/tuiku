package com.tuiku.dao;

/**
 * Site - 站点类
 */
public class Site {

    private int    id;       // site id
    private int    category; // site种类
    private String name;     // site名称
    private String url;      // site url
    private String brief;    // site简洁
    private String date;     // site编辑日期
    private int    userId;   // site编辑用户id

    public Site() {
    }

    public Site(int category, String name, String url, String brief, String date, int userId, int id) {
        this.category = category;
        this.name = name;
        this.url = url;
        this.brief = brief;
        this.date = date;
        this.userId = userId;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
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
        return "Site{" +
                "id=" + id +
                ", category='" + category + '\'' +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", brief='" + brief + '\'' +
                ", date='" + date + '\'' +
                ", userId=" + userId +
                '}';
    }

}