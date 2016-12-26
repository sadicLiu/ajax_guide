<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'json.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
	<script type="text/javascript"> 
		$(function()
		{
			$("#button1").click(function()
			{
				$.get("GsonServlet",{},function(data, status)
				{
					var htmlStr = "<table width='80%' border='1' align='center'><tr><th>id</th><th>name</th><th>companyAddress</th><th>homeAddress</th></tr>"
					
					for(var i = 0; i < data.length; i++)
					{
						var id = data[i].id;
						var name = data[i].name;
						var companyAddress = data[i].address.companyAddress;
						var homeAddress = data[i].address.homeAddress;
						
						htmlStr += "<tr align='center'><td>" + id + "</td><td>" + name + "</td><td>" + companyAddress + "</td><td>" + homeAddress + "</td></tr>";
					}
					htmlStr += "</table>";
					
					$("body table:eq(0)").remove();
					$("body:eq(0)").append(htmlStr);
				});
				}
			);
		});
	
	</script>
  </head>
  
  <body>
	<input type="button" id="button1" value="click to get content">
	
  </body>
</html>
