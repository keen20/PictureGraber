<%@ page language="java" import="java.util.*,com.down.util.DownloadUtil" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>网页图片批量下载器</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
  </head>
  <body style="background:url(bg3.jpg)">
  <%
  String url = request.getParameter("url");
  String htmlSource = DownloadUtil.htmlSource(url,"utf-8");
  //源代码放入到页面对象中去
  pageContext.setAttribute("htmlSource", htmlSource);
   %>
  <div id="box" style="width:1120px;margin:0 auto;text-align: center">
  <h1>网页图片自定义批量下载器--获取源代码</h1>
  <textarea id="source" style="width:1120px;height:460px;border:5px solid gray;"><%=htmlSource %></textarea>
  </div>
  <hr>
  <div style="width:960px;margin:auto auto auto 5px">
  <div style="display:inline-block; float:left;">
  <form action="downLoad.jsp" method="post" id="form1">
  <input value="下载到本地(D:/images)" type="submit" style="width:150px;height:40px;border:3px solid gray;">
  </form>
  </div>
  <div style="display:inline-block; float:left;padding-left: 5px">
  <form action="preview.jsp" method="post" id="form2">
  <input value="预览" type="submit" style="width:110px;height:40px;border:3px solid gray;">
  </form>
  </div>
  </div>
  <h3 style="text-align: left">一共抓取到符合需求的图片有:<span id="count"></span>张</h3>
  <hr>
  <script type="text/javascript" >
  $(function(){
  //jquery获取源代码
  var source=$("#source").val();
  var $source = $(source);
  var i = 0;
  // 获取源代码里所有图片,each表示循环
  $source.find("img").each(function(){
  var src = $(this).attr("src");
  if(src!=""&&src.length>0&&src.indexOf("jpg")!=-1){
  $("body").append("<div style='float:left;margin:5px'><img src='"+src+"' width='180' height='200'></div>");
  $("#form1").prepend("<input name='img' type='hidden' value='"+src+"'>");
  $("#form2").prepend("<input name='img' type='hidden' value='"+src+"'>");
  i++;
  }
  });
  
  $("#count").text(i);
  });
  </script>
  </body>
</html>
