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
  <div class="row">
    <h3>收藏站点</h3> <hr/>
    <div class="col-lg-2 col-md-2 col-sm-2">
      <a class="btn btn-default btn-block" href="/sites?category=0" role="button">热门站点</a>
      <a class="btn btn-default btn-block" href="/sites?category=1" role="button">语言类</a>
      <a class="btn btn-default btn-block" href="/sites?category=2" role="button">计算机网络</a>
      <a class="btn btn-default btn-block" href="/sites?category=3" role="button">架构</a>
    </div>

    <div class="col-lg-10 col-md-10 col-sm-10">
      <div class="row text-center">

        <c:forEach var="site" items="${sites}">
          <div class="jumbotron site-block col-lg-3 col-md-3 col-sm-3">
            <h4>${site.name}</h4>
            <small>${site.brief}</small>
            <p><a class="btn btn-primary" href="${site.url}" role="button">Learn more</a></p>
          </div>
        </c:forEach>

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
