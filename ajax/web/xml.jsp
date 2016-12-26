<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xml.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function()
		{
			
			/*
			$("#button1").click(function()
			{
				$.ajax({
					url : "XMLServlet",	// 请求地址
					type : "POST",		// 请求方法
					dataType : "xml",	// 响应类型
					// 发送到服务端的数据
					data : {"username" : $("#username").val()},			
					// 成功之后的回调函数，returnedData中是返回的数据
					success : function(returnedData)
					{
						var id = $(returnedData).find("id").text();
						var username  = $(returnedData).find("username").text();
						var address = $(returnedData).find("address").text();
						var age = $(returnedData).find("age").text();
						var htmlStr = "<table width='80%' border='1' align='center'><tr><th>id</th><th>username</th><th>address</th><th>age</th></tr><tr><th>" + id + "</th><th>" + username + "</th><th>" + address + "</th><th>" + age + "</th></tr></table>"
						
						//$("body table:eq(0)").remove();	
						$($("table")[0]).remove();
						$($("body")[0]).append($(htmlStr));
					}
				}
				);
			});
			*/
			$("#button1").click(function()
			{
				$.get("XMLServlet", 
				{
					"username" : $("#username").val()
				}, function(data, status)
				{
					var id = $(data).find("id").text();
					var username = $(data).find("username").text();
					var address = $(data).find("address").text();
					var age = $(data).find("age").text();
					var htmlStr = "<table width='80%' border='1' align='center'><tr><th>id</th><th>username</th><th>address</th><th>age</th></tr><tr><th>" + id + "</th><th>" + username + "</th><th>" + address + "</th><th>" + age + "</th></tr></table>"
					
					//$("body table:eq(0)").remove();	
					$($("table")[0]).remove();
					$($("body")[0]).append($(htmlStr));
				});
			});
			
		});
	</script>

  </head>
  
  <body id="body1">
  
	<select id="username">
		<option value="zhangsan">zhangsan</option>
		<option value="lisi">lisi</option>
	</select>
	<input type="button" id="button1" value="click to get info from server">


  </body>
</html>
