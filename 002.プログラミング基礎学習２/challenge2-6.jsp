<%-- 
    Document   : challenge2-6
    Created on : 2017/03/16, 17:23:26
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
int num = 1000;
int time = 0;  
while( num > 100  ) {

time++;
num = num / 2;

}
out.println( time ); 

%>  
</body>
</html>
