<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#button1").click(function () {
                $.ajax({
                            url: "JqueryAjaxServlet",	// 请求地址
                            type: "POST",		// 请求方法
                            dataType: "html",	// 响应类型
                            // 发送到服务端的数据
                            data: {"param1": $("#param1").val(), "param2": $("#param2").val()},
                            // 成功之后的回调函数，returnedData中是返回的数据
                            success: function (returnedData) {
                                $("#result").val(returnedData);
                            }
                        }
                );
            });
        });


    </script>

</head>

<body>
<input type="text" id="param1">+
<input type="text" id="param2">=

<input type="text" id="result">
<input type="button" value="get content from server" id="button1">

</body>
</html>
