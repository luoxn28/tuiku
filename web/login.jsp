<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="author" content="luoxn28.xyz">
  <!-- me.ico -->
  <link rel="icon" href="img/tuiku.ico" type="image/x-ico"/>

  <title>tuiku - 登录</title>

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
      <div class="col-lg-3 col-md-3 col-sm-3 col-center-block">
        <form class="form-signin" action="/dologin" method="post">
          <h4 class="form-signin-heading">请登录</h4>
          <hr/>
          <label for="username" class="sr-only">用户名</label>
          <input type="text" name="username" id="username" class="form-control" placeholder="用户名" required autofocus>
          <label for="password" class="sr-only">密码</label>
          <input type="password" name="password" id="password" class="form-control" placeholder="密码" required>
          <div class="checkbox">
            <label><input type="checkbox" value="remember-me">记住我 </label>
          </div>
          <button class="btn btn-primary btn-block" type="submit">登录</button>
        </form>
        <a class="row" href="/register">注册</a>
      </div>
    </div>
  </div>

  <%@ include file="footer.jsp" %>
  <!-- javascript -->
  <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
