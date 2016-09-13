package com.tuiku.dao;

/**
 * Blog - 博客类
 */
public class Blog {

    public static final int ORIGINAL  = 0; // 原创
    public static final int REPRINTED = 1; // 转载

    private int id;         // blog主键id
    private int birth;      // blog来源(转载/原创)
    private String title;   // blog标题
    private String author;  // blog作者
    private String preview; // blog简介(默认为博客内容的前100字符)
    private String text;    // blog内容
    private String category;// blog种类
    private String date;    // blog写作日期
    private String birthUrl;// blog的url，转载的话就是原文地址
    private int readCount;  // blog阅读计数
    private int authorId;   // 关联的userId(User表),authorId大于0表示是原创的，否则是转载的

    public Blog() { }

    public Blog(int birth, String title, String author, String preview, String text,
                String category, String date, String birthUrl, int readCount, int authorId) {
        this.birth = birth;
        this.title = title;
        this.author = author;
        this.preview = preview;
        this.text = text;
        this.category = category;
        this.date = date;
        this.birthUrl = birthUrl;
        this.readCount = readCount;
        this.authorId = authorId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBirth() {
        return birth;
    }

    public void setBirth(int birth) {
        this.birth = birth;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPreview() {
        return preview;
    }

    public void setPreview(String preview) {
        this.preview = preview;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getBirthUrl() {
        return birthUrl;
    }

    public void setBirthUrl(String birthUrl) {
        this.birthUrl = birthUrl;
    }

    public int getReadCount() {
        return readCount;
    }

    public void setReadCount(int readCount) {
        this.readCount = readCount;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", birth=" + birth +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", preview='" + preview + '\'' +
                ", text='" + text + '\'' +
                ", category='" + category + '\'' +
                ", date='" + date + '\'' +
                ", birthUrl='" + birthUrl + '\'' +
                ", readCount=" + readCount +
                ", authorId=" + authorId +
                '}';
    }
}
