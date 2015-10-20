<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>网页图片批量下载器</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
                 <!-- 元素加背景图片 -->
  <body style="background:url(bg2.jpg)">
                  <!--水平居中只需要margin:0 auto  -->
                  <!--垂直居中只需要line-height: 480px  -->
                  <!-- 设置测试边框border:5px solid red; -->
    <div style="width:960px;height:480px;margin:200px auto;text-align: center">
    <h1>网页图片自定义批量预览/下载器</h1>
    <form action="source.jsp" method="post" onsubmit="return validator();">
    <input type="text" name="url" id="url" style="width:260px;height:35px" placeholder="请输入网页地址,域名请加上http://协议头"><input type="submit" value="获取网页源代码" style="width:120px;height:35px">
   </form>
    </div>
    <script type="text/javascript">
    function validator(){
  			var url = document.getElementById("url").value;
  			//空判断
  			if(url=="" || url.length==0){
  				alert("请输入URL,如http://www.baidu.com");
  				document.getElementById("url").focus();
  				return false;
  			}
  			
  			//合法性判断
  			if(url!="" && url.indexOf("http://")==-1){
  				alert("请输入一个正确的URL,如http://www.baidu.com");
  				document.getElementById("url").focus();
  				return false;
  			}
  			
  			return true;
  		}
    </script>
  </body>
</html>
