<%@ page language="java" import="java.util.*,java.io.*,com.down.util.DownloadUtil" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>网页图片批量下载器</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
    <div id="box" style="width:1120px;margin:0 auto;text-align: center">
  <h1>预览</h1>
  </div>
  <%
  String[] imgs = request.getParameterValues("img");
  for(String img:imgs){
	   out.println("<img src='"+img+"'>");
  }
   %>    
  </body>
</html>
