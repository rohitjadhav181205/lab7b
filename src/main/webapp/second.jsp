<%@ page import="javax.servlet.http.Cookie" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Active Cookies</title>
</head>
<body>

<h2>Active Cookie List</h2>

<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
%>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Value</th>
                <th>Max Age</th>
            </tr>

<%
        for (Cookie c : cookies) {
%>
            <tr>
                <td><%= c.getName() %></td>
                <td><%= c.getValue() %></td>
                <td><%= c.getMaxAge() %></td>
            </tr>
<%
        }
    } else {
%>
        <p>No Cookies Available</p>
<%
    }
%>

</table>

<br>
<a href="index.html">Back to Home</a>

</body>
</html>