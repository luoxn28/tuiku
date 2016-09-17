<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="author" content="luoxn28.xyz">
  <!-- me.ico -->
  <link rel="icon" href="img/tuiku.ico" type="image/x-ico"/>

  <title>tuiku - 注册</title>

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
    <!--div class="row">
      <div class="col-lg-3 col-md-3 col-sm-3 col-center-block">
        <form class="form-signin" action="/index" method="post">
          <h4 class="form-signin-heading">请填写信息</h4>
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
        <a class="row" href="#">注册</a>
      </div>
    </div-->

    <div class="col-lg-6 col-md-6 col-sm-6 col-center-block">
      <form class="form-horizontal" action="/doregister" method="post">
        <h4 class="form-signin-heading">请注册</h4>
        <div class="row">
          <hr class="col-lg-6 col-md-6 col-sm-6"/>
        </div>
        <div class="form-group">
          <label for="username" class="col-lg-2 col-md-2 col-sm-2 control-label">用户名</label>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <input type="text" class="form-control" name="username" id="username" placeholder="用户名"/>
          </div>
        </div>
        <div class="form-group">
          <label for="password" class="col-lg-2 col-md-2 col-sm-2 control-label">密码</label>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <input type="password" class="form-control" name="password" id="password" placeholder="密码"/>
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-2 col-md-2 col-sm-2 control-label">性别</label>
          <div class="checkbox">
            <label><input type="checkbox" name="sex" value="0">男生</label>&nbsp;
            <label><input type="checkbox" name="sex" value="1">女生</label>&nbsp;
            <label><input type="checkbox" name="sex" value="2">其他</label>
          </div>
        </div>
        <div class="form-group">
          <label for="email" class="col-lg-2 col-md-2 col-sm-2 control-label">邮箱</label>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <input type="email" class="form-control" name="email" id="email" placeholder="邮箱"/>
          </div>
        </div>
        <div class="form-group">
          <label for="phone" class="col-lg-2 col-md-2 col-sm-2 control-label">手机</label>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <input type="text" class="form-control" name="phone" id="phone" placeholder="手机"/>
          </div>
        </div>
        <div class="form-group">
          <label for="who" class="col-lg-2 col-md-2 col-sm-2 control-label">邀请码</label>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <input type="text" class="form-control" name="who" id="who" placeholder="邀请码"/>
          </div>
        </div>
        <button class="btn btn-primary col-lg-4 col-lg-offset-2 col-md-4 col-lg-offset-2 col-sm-4 col-sm-offset-2" type="submit">
          注册
        </button>
      </form>
    </div>

  </div>

  <%@ include file="footer.jsp" %>
  <!-- javascript -->
  <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
