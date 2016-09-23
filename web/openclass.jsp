<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <div class="row">
    <h3>公开课</h3> <hr/>

    <div class="crow">
      <div class="row text-center">

          <div class="jumbotron openclass-div col-lg-3 col-md-3 col-sm-3">
            <h4>网易公开课</h4>
            <small>中国最好的公开课程网站</small>
            <p><a class="btn btn-primary" href="http://open.163.com/" role="button">进入</a></p>
          </div>

        <c:forEach var="openclass" items="${openclasses}">
          <div class="jumbotron openclass-div col-lg-3 col-md-3 col-sm-3">
            <h4>${openclass.name}</h4>
            <small>${openclass.brief}</small>
            <p><a class="btn btn-primary" href="${openclass.url}" role="button">进入</a></p>
          </div>
        </c:forEach>

      </div>

      <div class="row">
        <!-- admin可以添加公开课 -->
        <c:if test="${admin != null}">
          <div class="col-lg-5 col-md-5 col-sm-5 col-center-block">
            <hr class="row"/>
            <form class="form-signin" action="/#" method="post">
              <h4 class="form-signin-heading">添加新的公开课</h4>
              <hr/>
              <label for="name" class="sr-only">站点名称</label>
              <input type="text" name="name" id="name" class="form-control" placeholder="站点名称" required autofocus>
              <label for="brief" class="sr-only">站点简介</label>
              <input type="text" name="brief" id="brief" class="form-control" placeholder="站点简介" required autofocus>
              <label for="url" class="sr-only">站点url</label>
              <input type="text" name="url" id="url" class="form-control" placeholder="站点url" required autofocus>
            </select>

              <button class="btn btn-primary btn-block site-add-submit" type="submit">提交</button>
            </form>
          </div>
        </c:if>
      </div>
    </div>
  </div>
</div>

<%@ include file="footer.jsp" %>
<!-- javascript -->
<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>
</html>
