<%-- 
    Document   : challenge2-5
    Created on : 2017/03/16, 16:55:59
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
    int num = 0;
    for(int i = 0; i < 101; i++){
 
    num += i;

    out.println(num);
    }
    
%>

</body>
</html>
