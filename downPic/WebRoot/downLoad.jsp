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
  <%
  String[] imgs = request.getParameterValues("img");
  /* String ServerPath = request.getRealPath("/");//获取服务器端webroot根路径，用于预览 */
  //System.out.println(ServerPath);
  for(String img:imgs){
  String filename = img.substring(img.lastIndexOf("/")+1,img.length());
   	File filePath=new File("D:"+File.separator+"images");    
	if  (!filePath .exists()  || !filePath .isDirectory())      
	{       
	    filePath .mkdir();    
	} else   
	{  
	   DownloadUtil.downloadImg(img,filePath.toString()+File.separator+filename);
	}
  }
   %>
       
  </body>
</html>
