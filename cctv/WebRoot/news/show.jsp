<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'show.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
<script src="<%=basePath%>/resource/jquery/jquery1.11.3.min.js"></script>
<!--css框架--引入bootstrap-->
<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- 引入自己的js/css -->
		
	 <style>
	 
	   .table > tbody > tr > td{
	   border-top:none
	   }
	 
	 </style>
	 

  </head>
  <style type="text/css">
  body{
  background:url("image/3.jpg");
background-size:1400px 768px;
  }
  
  </style>
  <body>
  
    <div class="container">
      <div class="col-md-12">
         
       <h1 class="page-header text-center" ><b>潮阳今日视线</b></h1><%--
       <br>    <br>   
   
         <div style="position:relative;border:1px solid red">
           <span style="position:absolute;left:0px;"><a href="#">日本富山国际小记者访问东航</a></span>
           <span style="position:absolute;right:0px;">2015-08-13</span>
        </div>
         
         
         --%><table class="table table-hover" >
           <!-- 
           xwlist  =  List<News>
           
           u  =   News
           
           ${u.title}  => u.getTitle()
            -->
            
            
            
        
        
           <s:iterator value="xwlist" var="u">
          
          <tr>
          <td class="text-left">
          <a href="dh!showDetail.action?entity.id=${u.id}"> ${u.title} </a>
          </td>
          <td class="text-right">
           ${u.pubdate}
          </td>
          
          </tr>
           
           </s:iterator>        
         
        </table>
         <div class="text-right">
        <a class="btn btn-info " href="dh!showAdmin.action"/>管理</a>
        </div>
      </div>
      
      
    </div>
 
</body>
</html>
