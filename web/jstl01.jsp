<%@ page import="com.github.gudian1618.User" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  com.github.gudian1618.User: gudian1618
  Date: 2019/11/20
  Time: 9:00 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>c:set标签</h1>
<h3>1.往指定域中添加一个属性</h3>
<c:set var="name" value="张三" scope="request"/>
<h3>2.修改指定域中的一个属性值</h3>
${name}

<h1>2.c:if标签</h1>
<c:if test="${ 345+642 > 888 }">yes</c:if>
<c:if test="${ !(345+642 > 888) }">no</c:if>

<h1>3.c:foreach标签</h1>
<h2>遍历域中的数组或集合中的元素</h2>
<%
    String[] names = {"刘德华", "黎明", "张学友"};
    request.setAttribute("names", names);
    for (String name : names) {

    }
%>
<c:forEach items="${ names }" var="name">
    ${name}<br>
</c:forEach>

<h2>遍历域中的map集合中的元素</h2>
<%
    //声明User对象,并将user对象存入域中
    Map map = new HashMap();
    map.put("name", "阿凡达");
    map.put("age", 18);
    map.put("addr", "北京");
    request.setAttribute("map1", map);
    // 通过EL获取域中的User对象中的属性值
%>
<c:forEach items="${map1}" var="kv">
    ${ kv.getKey() } <br>
    ${ kv.getValue() } <br>
    ${ kv } <br>
</c:forEach>

<h3>遍历0到100之间的所有偶数,中间用逗号分割</h3>
<c:forEach begin="0" end="100" var="i">
    ${ i },
</c:forEach>

</body>
</html>
