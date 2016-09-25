# tuiku
一个分享知识&amp;学习交流的网站<br/>
测试账号/密码: test/test<br/>

I've put it on production for my personal blog site on [http://luoxn28.xyz:8080](http://luoxn28.xyz:8080).

**tuiku** is powered by some powerful frameworks and third-party projects:
- [Spring](https://spring.io/)  A most popular framework helps development teams everywhere build simple, portable, fast and flexible JVM-based systems and applications.
- [SpringMVC](https://spring.io/)  A popular MVC framework of Spring family.
- [MyBatis](http://ibatis.apache.org/)  A SQL mapper framework makes it easier to use a relational database with object-oriented applications.
- [MySQL](http://www.mysql.com/)  A popular relational database.
- [Bootstrap](http://www.bootcss.com/)  A very popular and responsive front-end framework.
- [UEditor](http://ueditor.baidu.com/website/)  A rich text web editor by baidu.
- [Maven](http://maven.apache.org/) A software project management and comprehension tool.

## To use
Fork tuiku project, download it to local computer.
Create A J2EE Web Application Product by IDEA, import the source code into it.
Create a db.properties file like this:

```
user=xxx
password=xxx
driverClass=com.mysql.jdbc.Driver
jdbcUrl=jdbc:mysql://192.168.1.150/tuiku?useUnicode=true&characterEncoding=utf8
```

```
# If you're using Centos server

# Install MySQL
yum install mysql-server
service mysql start
mysql -u root -p
>> create database tuiku;
```

## License
Apache License (Version 2.0)