<%@ page import="javax.servlet.http.Cookie" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Cookie Created</title>
</head>
<body>

<%
    String name = request.getParameter("name");
    String domain = request.getParameter("domain");
    int maxAge = Integer.parseInt(request.getParameter("maxAge"));

    // Create Cookie
    Cookie cookie = new Cookie(name, domain);
    cookie.setMaxAge(maxAge);

    // Add cookie to response
    response.addCookie(cookie);
%>

<h2>Cookie Added Successfully</h2>

<p><b>Name:</b> <%= name %></p>
<p><b>Domain:</b> <%= domain %></p>
<p><b>Max Age:</b> <%= maxAge %> seconds</p>

<br>
<a href="second.jsp">Go to Active Cookie List</a>

</body>
</html>