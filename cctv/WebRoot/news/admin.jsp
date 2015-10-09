
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!--引入struts标签 -->
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'admin.jsp' starting page</title>

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

		<!-- 引入自己的js/css -->
		<style>
/*标签选择器*/
input[type="text"] {
	width: 60%;
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
			<h1 class="page-header  text-center">
				潮阳新闻管理
			</h1>
			<div class="row">
                 <br>
				<form action="dh!search.action" method="post">
					<div class="col-md-4">
						<label class="control-label" for="input01">
							标题
						</label>
						<input type="text" placeholder="placeholder" class="input-xlarge"
							name="entity.title">
					</div>
					<div class="col-md-4">
						<label class="control-label" for="input01">
							发布日期
						</label>
						<input type="text" placeholder="placeholder" class="input-xlarge"
							name="entity.pubdate">
					</div>
					<div class="col-md-4">
						<input type="submit" value="搜索" class="btn btn-info" />
					</div>

				</form>
			</div>
			<br />

			<p class="text-right">
				<a href="news/admin1.jsp" class="btn btn-info">添加</a>
				<a href="dh!showAll.action" class="btn btn-info">返回</a>
			</p>

			<table
				class="table table-bordered table-hover table-condensed text-center">
				<tr>
					<td width="20%">
						标题
					</td>
					<td width="10%">
						发布日期
					</td>
					<td width="55%">
						内容
					</td>
					<td>
						管理
					</td>
				</tr>


				<s:iterator value="xwlist" var="u">
					<tr>
						<td>
							${title}
						</td>
						<td>
							${u.pubdate}
						</td>
						<td>
							${u.content}
						</td>
						<td>
							<a class="btn btn-info"
								href="dh!update.action?entity.id=${u.id}">修改</a>
							<a class="btn btn-info"
								href="dh!delete.action?entity.id=${u.id}">删除</a>
						</td>
					</tr>




				</s:iterator>








			</table>


		</div>
	</body>
</html>
