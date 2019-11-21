<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.github.gudian1618.User" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  com.github.gudian1618.User: gudian1618
  Date: 2019/11/18
  Time: 7:39 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>EL表达式</h1>
${"hello JSP......"}
<%="hello world......"%>

<% // 声明变量并将变量存入域中
    String name = "刘德华";
    request.setAttribute("name1", name);
%>
${name1}

<h2>获取域中的数组或集合中的元素</h2>
<%
    String[] names = {"刘德华", "黎明", "张学友"};
    request.setAttribute("names", names);
%>
${names[2]}
<h2>获取域中的map结合元素</h2>
<%
    Map map = new HashMap();
    map.put("name", "阿凡达");
    request.setAttribute("map1", map);
%>
${map1.name}
<hr/>

<h3>获得域中的javabean属性的值</h3>
<%
    //声明User对象,并将user对象存入域中
    User user = new User();
    user.setName("张飞");
    user.setAge(20);
    user.setAddr("北京");
    request.setAttribute("u", user);
    // 通过EL获取域中的User对象中的属性值
%>
${u.getName()}
</body>
</html>
