<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="author" content="luoxn28.xyz">
  <!-- me.ico -->
  <link rel="icon" href="img/tuiku.ico" type="image/x-ico"/>

  <title>tuiku</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
  <!-- tuiku -->
  <link href="css/tuiku.css" rel="stylesheet" media="screen" />
  <!-- 图标 -->
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
  <%@ include file="header.jsp" %>

  <!-- Main Content -->
  <div class="container">
    <div class="row" padding="">
      <div class="col-lg-9 col-md-9 col-sm-9">
        <!-- 博客内容 -->
        <div class="row">
          <blockquote>
            <a href="#">${blog.title}</a>
            <small>Posted by <a href="#">${blog.author}</a></small>
          </blockquote>
          <p>${blog.text}</p>
          <small class="text-right">
            <hr class="row"/>
            <p>
              阅读(${blog.readCount}) 评论(0)
              <a class="text-right" href="#">编辑</a> <a class="text-right" href="#">收藏</a><br/>
              Posted by <a href="#">${blog.author}</a> on ${blog.date}
            </p>
          </small>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-3">
        <%@ include file="border.jsp" %>
      </div>
    </div>
  </div>

  <%@ include file="footer.jsp" %>
  <!-- javascript -->
  <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>
</html>
