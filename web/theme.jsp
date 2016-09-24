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
  <!-- 导航栏 -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation"><a href="/themes?category=0">收藏</a></li>
    <li role="presentation"><a href="/themes?category=1">C/C++</a></li>
    <li role="presentation"><a href="/themes?category=2">Java</a></li>
  </ul>

  <div class="row" padding="">
    <div class="col-lg-9 col-md-9 col-sm-9">
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

  <div class="row">
    <!-- admin可以添加站点 -->
    <c:if test="${admin != null}">
      <div class="col-lg-5 col-md-5 col-sm-5 col-center-block">
        <hr class="row"/>
        <form class="form-signin" action="/themeadd" method="post">
          <h4 class="form-signin-heading">添加新主题</h4>
          <hr/>
          <label for="name" class="sr-only">主题名称</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="主题名称" required autofocus>
          <label for="brief" class="sr-only">主题简介</label>
          <input type="text" name="brief" id="brief" class="form-control" placeholder="主题简介" required autofocus>
          <label for="url" class="sr-only">主题url</label>
          <input type="text" name="url" id="url" class="form-control" placeholder="主题url" required autofocus>
          分类: <select name="category">
          <option value="0">收藏</option>
          <option value="1">C/C++</option>
          <option value="1">Java</option>
        </select>

          <button class="btn btn-primary btn-block site-add-submit" type="submit">提交</button>
        </form>
      </div>
    </c:if>
  </div>

</div>

<%@ include file="footer.jsp" %>
<!-- javascript -->
<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>
</html>
