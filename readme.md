## ajax

#### 1.ajax.jsp + AjaxServlet                           
       原生ajax使用的一个demo

#### 2.jquery_ajax.jsp + JqueryAjaxServlet
       jquery提供的ajax方法使用的一个demo

#### 3.xml.jsp + XMLServle
       使用xml的方式用ajax方法交互数据

#### 4.json.jsp + GsonServlet + People + Address
       使用json的方式用ajax交互数据
       前后端交互数据时，如果要实现json对象和java对象的相互转化，可以使用一些第三方库

#### 5.Function问题


## ajax跨域问题

* notes：
    * description: ajax不能通过get、post方法请求不同域名下的资源，本质原因是XMLHTTPRequest对象不支持
    * solution：比较常用的方式是通过jsonp解决，所谓jsonp，是指在ajax请求的url中指定一个回调函数，然后将这个url以动态创建节点的方式添加到script标签的src属性上，并将这个script标签动态添加到html中，这样，由于script标签可以跨域，那么就可以将需要的资源返回。

#### cross_domain
     自定义jsonp函数来实现跨域

#### 1.weather.html
       原生方式实现跨域

#### 2.menu.html 
       jquery实现跨域                                                          