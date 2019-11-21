<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  com.github.gudian1618.User: gudian1618
  Date: 2019/11/18
  Time: 6:58 下午
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
<h1>index.jsp...</h1>
<h1>1.JSP表达式</h1>
<%= new Date() %>
<% String name = "韩少云"; %>
<%= name %>
<%= "hello JSP" %>
<h1>2.JSP脚本片段</h1>
<%
    for (int i = 0; i < 5; i++) {
        out.write("hello jsp...<br/>");
    }
%>
<%for (int i = 0; i < 5; i++) {%>
hello world<br>
<%}%>

<%=new Date()%>


</body>
</html>
