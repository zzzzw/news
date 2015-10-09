<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
		<script src="<%=basePath%>/resource/jquery/jquery1.11.3.min.js"></script>
		<!--css框架--引入bootstrap-->
		<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
		<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- 引入自己的js/css -->
  </head>
  <style type="text/css">
  body{
  background:url("image/3.jpg");
background-size:1400px 768px;
  }
  </style>
  <body>
   <div class="container">

			<h2 class="page-header text-center ">
				${entity.title}
				<!-- 使用OGNL表示取值 -->
			</h2>
			<h6 class="text-center">
				发布时间：${entity.pubdate}  
			</h6>
			<h6 class="text-center">
				浏览量：${entity.num}  
			</h6>
			<div>
				<pre >${entity.content}
         
</pre>
<%--<blockquote> ${entity.content}</blockquote>


			--%></div>
			<a class="btn btn-info" onclick="history.back();" />返回</a>
		</div>
  </body>
</html>
