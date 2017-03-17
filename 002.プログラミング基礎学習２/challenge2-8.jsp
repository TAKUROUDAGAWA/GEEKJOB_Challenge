<%-- 
    Document   : challenge2-8
    Created on : 2017/03/17, 13:13:24
    Author     : takuro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
String a[] = {"10", "100", "soeda", "hayashi", "-20", "118", "END"};

a[2] = "33";

out.println(a[2]);

%>
    </body>
</html>
