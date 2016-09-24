package com.tuiku.dao;

/**
 * Theme - 主题类
 */
public class Theme {

    private int    id;       // theme id
    private int    category; // theme种类
    private String name;     // theme名字
    private String url;      // theme连接
    private String brief;    // theme简介

    public Theme() {
    }

    public Theme(String name, String url, String brief) {
        this.name = name;
        this.url = url;
        this.brief = brief;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
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

    @Override
    public String toString() {
        return "Theme{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", brief='" + brief + '\'' +
                '}';
    }

}
