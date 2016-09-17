<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="author" content="luoxn28.xyz">
  <!-- me.ico -->
  <link rel="icon" href="img/tuiku.ico" type="image/x-ico"/>

  <title>tuiku - 写博客</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
  <!-- tuiku -->
  <link href="css/tuiku.css" rel="stylesheet" media="screen" />
  <!-- 图标 -->
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">

  <!-- UDeitor -->
  <script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.config.js"></script>
  <script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.all.min.js"> </script>
  <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
  <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
  <script type="text/javascript" charset="utf-8" src="./ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
  <%@ include file="header.jsp" %>

  <!-- Main Content -->
  <div class="container">
    <div class="row" padding="">
      <div class="row col-lg-9 col-md-9 col-sm-9">
          <form class="form-signin" action="/dopost" method="post">
            <hr/>
            <div class="row col-lg-4 col-md-4 col-sm-4">
              <label for="editorTitle" class="sr-only">标题</label>
              <input type="text" name="title" id="editorTitle" class="form-control" placeholder="标题" required autofocus/>
            </div>
            <div class="row col-lg-4 col-md-4 col-sm-4">
              <select class="form-control" name="category">
                <option value="null">博客种类</option>
                <option value="C/C++">C/C++</option>
                <option value="Java">Java</option>
                <option value="网络/操作系统">网络/操作系统</option>
                <option value="数据结构算法">数据结构算法</option>
              </select>
            </div>

            <!-- ueditor输入框 -->
            <div class="row control-group col-lg-9 col-md-9 col-sm-9">
              <div class="form-group col-xs-12 floating-label-form-group controls">
                <script id="editor" type="text/plain" style="width:768px;height:375px;"></script>
              </div>
            </div>

            <button class="btn btn-primary col-lg-4 col-md-4 col-sm-4" type="submit">
              发表
            </button>
          </form>

      </div>

      <!--div class="col-lg-3 col-md-3 col-sm-3">
        <div class="row">
          <strong>右侧导航</strong> <br/>
          <hr class="col-lg-3 col-md-3 col-sm-3"/>
        </div>
        <p><a href="#">tuiku</a>是一个分享知识的网站。</p>
      </div-->
    </div>
  </div>




  <script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
  </script>

  <%@ include file="footer.jsp" %>
  <!-- javascript -->
  <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
