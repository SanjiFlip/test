<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
		.mydiv{
			color: red
		}
	</style>
	
	
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	
	<script type="text/javascript">
		// 把js的document包装成JQuery对象
		$(document).ready(function() { //html文档加载完毕后，立即调用ready函数，然后进入匿名函数,弹出对话框
			//alert("文档加载完毕")
			
			//通过标签名称获取对象，然后再取内部html内容      标记选择器
			//alert($("p").html())
			
			//通过id获取对象，然后再取内部html内容      id选择器
			//alert($("#p2").html())
			//alert(document.getElementById("p2").innerHTML) //老版本的js
			
			//通过样式获取对象，然后再取内部html内容    css选择器
			//alert($(".p3").html())
			
			//通过属性获取对象，然后再取内部html内容     属性选择器
			//alert($("p[name='p4']").html())
			
			//dom对象转 jQuery对象使用$()
			//jquery对象转dom对象get()
			//alert($("#p2").get(0).innerHTML)
			
			//循环迭代
			/* $("p").each(function(i, e) {
				alert(i+"="+$(e).html())
			}) */
			
			//注册时间
			/* $("#a1").bind("click", function(e) {
				alert("点我干啥1")
			}) */
			
			$("#a1").click(function(e) {
				alert("点我干啥2")
				alert($(this).attr("href"))  // 查看href里面的内容
				$(this).attr("href","http://www.qq.com")  // 替换href里面的内容
				e.preventDefault();//阻止跳转
			})
			
			//样式处理
			/* $("#div1").mouseover(function(e) {
				$(this).addClass("mydiv")
			}).mouseout(function(e) {
				$(this).removeClass("mydiv")
			}) */
			
			
			//动画处理
			/* $("#btn1").click(function(e) {
				//$("#div2").hide(3000)  //隐藏
				$("#div2").toggle(3000)  //轮换 持续三秒
			}) */
		})
	</script>
  </head>
  
  <body>
    <p>我是段落1</p>
    <p id="p2">我是段落2</p>
    <p class="p3">我是段落3</p>
    <p name="p4">我是段落4</p>
    <a id="a1" href="http://www.baidu.com">点我</a>
    <div id="div1">
    	移上来，看看效果！
    </div>
    
    <button id="btn1">点我看看</button>
    <div id="div2" style="border: ">
    	加QQ详细聊天天1，黑黑11<br>
    	加QQ详细聊天天2，黑黑11<br>
    	加QQ详细聊天天3，黑黑11<br>
    	加QQ详细聊天天4，黑黑11<br>
    	加QQ详细聊天天5，黑黑11<br>
    	加QQ详细聊天天6，黑黑11<br>
    	加QQ详细聊天天7，黑黑11<br>
    </div>
    
  </body>
</html>
