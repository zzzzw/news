<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'admin1.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
		<script src="<%=basePath%>/resource/jquery/jquery1.11.3.min.js"></script>
		<!--css框架--引入bootstrap-->
		<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
		<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.css"
			rel="stylesheet">
		<style>
input[type="text"],textarea {
	width: 80%;
}
</style>
	</head>
	<style type="text/css">
body {
	background: url("image/3.jpg");
	background-size: 1400px 768px;
}
</style>
	<body>
		<div class="container">
			<h1 class="page-header ">
				新闻管理
			</h1>


			<form class="form-horizontal" action="dh!add.action" method=" post"  >

				<div class="control-group">
                   <input type="hidden"  value="${ entity.id}" name="entity.id"/>
					<!-- Text input-->
					<label class="control-label" for="input01">
						标题
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入标题" class="input-xlarge"
							name="entity.title" value="${entity.title}">

					</div>
				</div>

				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						发布时间
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入时间" class="input-xlarge"
							name="entity.pubdate" value="${entity.pubdate}">

					</div>
				</div>

				<div class="control-group">

					<!-- Textarea -->
					<label class="control-label">
						内容
					</label>
					<div class="controls">
						<div class="textarea">
							<textarea rows="10" name="entity.content"> ${entity.content} </textarea>
						</div>
					</div>
				</div>
				<br />
				<div class="control-group text-center">

					<input type="submit" class="btn btn-info" value="保存" />
					<input type="button" class="btn btn-info"
						onclick="location.href='dh!showAdmin.action'" value="返回" />

				</div>


			</form>


		</div>
	</body>
</html>
