(function(window, document) {
    'use strict';

    /*
    * url: 要请求的url地址
    * params: 请求参数
    * callback: 处理返回值的回调函数，这个函数被挂在了window对象上，但是更好的方式是把
    *           所有的callback函数都挂在一个对象上，避免污染全局
    * */
    window.jsonp = function (url, params, callback) {
        // 1.将callback函数绑定到window对象上
        var callbackName = 'callback_' + Math.random().toString().replace('.', '');
        window[callbackName] = callback;

        // 2.拼接url和params
        var queryString = '?';
        for(var item in params) {
            queryString += ('&' + item + '=' + params[item]);
        }

        queryString += ('&callback=' + callbackName); // 指定回调函数的名字
        url += queryString;

        // 3.动态创建script节点，将其添加到html上
        var myScript = document.createElement('script');
        myScript.setAttribute('src', url);
        document.body.appendChild(myScript);
    };
    /*
    * 调用实例
    * http://api.douban.com/in_theaters?count=10&start=10&callback=callbackName
    * jsonp('http://api.douban.com/in_theaters', {
    *   count: 10,
    *   start: 10
    * }, function(response) {
    *   console.log(response);
    * })
    * */

})(window, document);
