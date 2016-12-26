<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ajax</title>
    <style>
        div {
            color: red;
        }
    </style>
    <script type="text/javascript">
        function getContent() {
            var xhr = null;

            // 第一步：首先创建xhr对象
            if (window.XMLHttpRequest) {
                xhr = new XMLHttpRequest();
            } else {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            }

            if (null != xhr) {
                var value1 = document.getElementById("value1").value;
                var value2 = document.getElementById("value2").value;
                var url = "./AjaxServlet?value1=" + value1 + "&value2=" + value2;

                // 第二步：准备发送请求-配置发送请求的一些行为
                xhr.open("GET", url, true);

                // 第三步：指定一些回调函数
                xhr.onreadystatechange = ajaxCallback;

                // 第四步：执行发送的动作(null是为了兼容低版本浏览器)
                // get方式直接附加数据在上面的url中，post方式加在参数里
                xhr.send();

                /*	post方式
                 xmlHttpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                 xmlHttpRequest.send("v1=" + v1 + "&v2=" + v2);
                 */
            }

            function ajaxCallback() {
                if (xhr.readyState == 4) {
                    if (xhr.status == 200) {
                        document.getElementById("result").innerHTML = xhr.responseText;
                    }
                }
            }
        }
    </script>
</head>
<body>
<div id="result"></div>
<label for="value1">value1: <input type="text" id="value1"></label><br>
<label for="value2">value2: <input type="text" id="value2"></label><br>
<button onclick="getContent();">将内容动态添加到此页面</button>
</body>
</html>
