<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="navbar-static-top">
  <nav class="navbar navbar-default" role="navigation">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <a class="navbar-brand" href="/index">tuiku</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li><a href="/">文章</a></li>
          <li><a href="/site">站点</a></li>
          <li><a href="#">主题</a></li>
          <li><a href="/openclass">公开课</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
              关于我<span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li><a href="http://www.cnblogs.com/luoxn28">我的博客</a></li>
              <li><a href="https://github.com/luoxn28">我的GitHub</a></li>
              <li><a href="#">我的微博</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="/luoxn28/luoxn28.html">我的主页</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="https://github.com/luoxn28/tuiku">tuiku网站源码</a></li>
            </ul>
          </li>
        </ul>

        <form class="navbar-form navbar-left" role="search" action="/search" method="post">
          <div class="form-group">
            <input name="search" type="text" class="form-control" placeholder="搜索">
          </div>
          <button type="submit" class="btn btn-default">搜索</button>
        </form>

        <c:if test="${user != null}">
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                  ${user.name}<span class="caret"></span>
              </a>
              <ul class="dropdown-menu">
                <c:if test="${admin != null}">
                  <li><a href="/admin/admin">tuiku控制台</a></li>
                  <li role="separator" class="divider"></li>
                </c:if>
                <li><a href="/userindex">我的主页</a></li>
                <li><a href="/post">写博客</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="/logout?userId=${user.id}">退出</a></li>
              </ul>
            </li>
          </ul>
        </c:if>
        <c:if test="${user == null}">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">登录</a></li>
          </ul>
        </c:if>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
</header>