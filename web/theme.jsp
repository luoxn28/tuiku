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
  <!--nav class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container"-->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation"><a href="#">收藏</a></li>
        <li role="presentation"><a href="#">C/C++</a></li>
        <li role="presentation"><a href="#">Java</a></li>
      </ul>
    <!--/div>
  </nav-->

  <div class="row" padding="">
    <div class="col-lg-9 col-md-9 col-sm-9">
      <div class="row">
        <blockquote>
          <a href="#">Nginx源码分析</a>
          <p>Nginx，一个高性能服务器</p>
          <small>学习服务器的好资料</small>
        </blockquote>
      </div>

      <c:forEach var="theme" items="${themes}">
        <div class="row">
          <blockquote>
            <a href="/themes?p=${theme.url}">${theme.name}</a>
            <p>${theme.brief}</p>
            <small>posted by @tuiku</small>
          </blockquote>
        </div>
      </c:forEach>
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
