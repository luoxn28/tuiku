<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="author" content="luoxn28.xyz">
  <!-- me.ico -->
  <link rel="icon" href="img/tuiku.ico" type="image/x-ico"/>

  <title>tuiku - 工程师社区</title>

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
      <div class="row">
        <strong>最新文章</strong> <br/>
        <hr class="col-lg-9 col-md-9 col-sm-9"/>
      </div>

      <!-- 热门文章 -->
      <c:if test="${blogs == null || blogs.size() == 0}">
        亲，赶紧记录知识哈 :)
      </c:if>
      <c:forEach var="blog" items="${blogs}">
        <div class="row">
          <a href="/blog?p=${blog.id}">${blog.title}</a>
          <p>${blog.preview}</p>
          <p>Posted by <a href="#">${blog.author}</a> on ${blog.date}</p>
          <hr class="col-lg-9 col-md-9 col-sm-9"/>
        </div>
      </c:forEach>

      <!-- 翻页功能 -->
      <!--nav>
        <ul class="pagination">
          <li class=""><a href="/index?index=prev">&laquo;</a></li>
          <li class=""><a href="/index?index=1">1</a></li>
          <li class=""><a href="/index?index=2">2</a></li>
          <li class=""><a href="/index?index=3">3</a></li>
          <li class=""><a href="/index?index=4">4</a></li>
          <li class=""><a href="/index?index=5">5</a></li>
          <li class=""><a href="#">...</a></li>
          <li class=""><a href="/index?index=next">&raquo;</a></li>
        </ul>
      </nav-->
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
