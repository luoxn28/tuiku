<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="author" content="luoxn28.xyz">
  <!-- me.ico -->
  <link rel="icon" href="../img/tuiku.ico" type="image/x-ico"/>

  <title>tuiku - 工程师社区</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap -->
  <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
  <!-- tuiku -->
  <link href="../css/tuiku.css" rel="stylesheet" media="screen" />
  <!-- 图标 -->
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
  <%@ include file="../header.jsp"%>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="row">
          <strong>导航栏</strong> <br/>
          <hr class="col-lg-3 col-md-3 col-sm-3"/>
        </div>

        <div class="bs-docs-sidebar hidden-print hidden-xs hidden-sm" role="complementary">
          <ul class="nav bs-docs-sidenav">
            <li>
              <a href="#overview">概览</a>
              <ul class="nav">
                <li><a href="#overview-doctype">HTML5 文档类型</a></li>
                <li><a href="#overview-mobile">移动设备优先</a></li>
                <li><a href="#overview-type-links">排版与链接</a></li>
                <li><a href="#overview-normalize">Normalize.css</a></li>
                <li><a href="#overview-container">布局容器</a></li>
              </ul>
            </li>
          </ul>
        </div>

      </div>
    </div>

  </div>

  <%@include file="../footer.jsp" %>

  <!-- javascript -->
  <script type="text/javascript" src="../js/jquery-1.12.3.min.js"></script>
  <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>
