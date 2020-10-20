<%@ page import="cn.jbit.pojo.Users" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Users users=(Users)session.getAttribute("users");
    if(users==null){
       response.sendRedirect("gotoUserLogin");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
