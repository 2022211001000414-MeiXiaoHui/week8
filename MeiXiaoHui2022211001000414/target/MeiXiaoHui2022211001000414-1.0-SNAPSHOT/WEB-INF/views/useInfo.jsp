<%@ page import="com.MeiXiaoHui.model.User" %><%--
  Created by IntelliJ IDEA.
  User: 梅晓辉
  Date: 2024/4/11
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp"%>

<h1>User Info</h1>
<%
    Cookie []allCookies= request.getCookies();
    for(Cookie c:allCookies){
        out.println("<br/>"+c.getName()+"---"+c.getValue());
    }
%>
<%
    User u= (User) session.getAttribute("user");
%>
<table>
    <tr>
        <td>Username:</td>
        <td><%=u.getUsername()%></td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><%=u.getPassword()%></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><%=u.getEmail()%></td>
    </tr>
    <tr>
        <td>Gender:</td>
        <td><%=u.getGender()%></td>
    </tr>
    <tr>
        <td>birthdate:</td>
        <td><%=u.getBirthDate()%></td>
    </tr>

</table>
<a href="/updateUser" style="size: A3">Click here to Update</a>
<%@include file="footer.jsp"%>
