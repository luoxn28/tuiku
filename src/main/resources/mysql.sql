DROP DATABASE IF EXISTS tuiku;
CREATE DATABASE tuiku DEFAULT CHARACTER SET UTF8;
USE tuiku;

DROP TABLE IF EXISTS blog;
CREATE TABLE blog (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  birth INT NOT NULL,
  title VARCHAR(128) NOT NULL,
  author VARCHAR(32) NOT NULL,
  preview VARCHAR(128),
  text TEXT,
  category VARCHAR(32),
  date TIMESTAMP DEFAULT '2016-05-20 05:20:00',
  birthUrl VARCHAR(256),
  readCount int,
  authorId int
);

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(32) NOT NULL,
  password VARCHAR(32) NOT NULL,
  sex int,
  email VARCHAR(32),
  phone VARCHAR(16),
  admin VARCHAR(16)
);

DROP TABLE IF EXISTS site;
CREATE TABLE site (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  category INT NOT NULL,
  name VARCHAR(32) NOT NULL,
  url VARCHAR(256),
  brief VARCHAR(256),
  date TIMESTAMP DEFAULT '2016-05-20 05:20:00',
  userId int
);

DROP TABLE IF EXISTS openclass;
CREATE TABLE openclass (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(32) NOT NULL,
  url VARCHAR(256),
  brief VARCHAR(256),
  date TIMESTAMP DEFAULT '2016-05-20 05:20:00',
  userId int
);

DROP TABLE IF EXISTS theme;
CREATE TABLE theme (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  category INT NOT NULL,
  name VARCHAR(32) NOT NULL,
  url VARCHAR(256),
  brief VARCHAR(256)
);

insert site (category, name, url, brief, userId)
  values(0, '知乎', 'https://www.zhihu.com/', '一个高质量问答社区', 1);
insert site (category, name, url, brief, userId)
  values(1, 'ImportNew', 'http://www.importnew.com/', '一个Java&Android技术分享网站', 1);

insert openclass (name, url, brief, userId)
  values('网易公开课', 'https://open.163.com/', '一个高质量学习网站', 1);

insert theme (category, name, url, brief)
  values(0, 'Spring框架学习', 'http://www.baidu.com', 'Java中最流行框架之一，Java程序员必学知识~');

insert blog (birth, title, author, preview, text, category, date, readCount, authorId)
    values(0, 'Java学习笔记', '骆向南', 'Java笔记', 'Java IO、集合、多线程、框架', 'Java',
    '2016-05-20 00:05:20', 0, 1);
insert blog (birth, title, author, preview, text, category, date, readCount, authorId)
    values(0, 'Linux网络编程', '骆向南', '网络编程笔记', 'epoll是linux下高性能的IO复用技术，是Linux下多路复用IO接口select/poll的增强版本，它能显著提高程序在大量并发连接中只有少量活跃的情况下的系统CPU利用率。另一点原因就是获取事件的时候，它无须遍历整个被侦听的描述符集，只要遍历那些被内核IO事件异步唤醒而加入Ready队列的描述符集合就行了。epoll除了提供select/poll那种IO事件的水平触发（Level Triggered）外，还提供了边缘触发（Edge Triggered），这就使得用户空间程序有可能缓存IO状态，减少epoll_wait/epoll_pwait的调用，提高应用程序效率。
　　为什么会出现IO复用技术呢，比如在Web应用中，大量的请求连接事件，如果采用多进程方式处理，也就是一个连接对应一个fork来处理，这样开销太大了，毕竟创建进程还是很耗资源的；如果采用多线程方式处理，也就是一个连接对应一个线程来处理，当请求并发量上去的话，系统中就会充斥着很多处理线程，毕竟一个系统创建线程是有一定上限的。这时，就需要我们的IO复用技术了。常见的网络模型中，有多进程+IO复用编程模型，也有多线程+IO复用编程模型，比如大名鼎鼎的nginx默认采用的就是多进程+IO复用技术来处理网络请求的；开源网络库libevent也是基于IO复用技术来完成网络数据处理的。', 'Linux',
    '2016-05-20 00:05:20', 0, 1);