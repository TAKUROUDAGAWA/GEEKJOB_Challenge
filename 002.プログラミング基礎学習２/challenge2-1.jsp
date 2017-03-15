<%-- 
    Document   : challenge2-1
    Created on : 2017/03/15, 12:33:13
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

int num = 2;
    
switch(num) {

case 1:

out.println("one");

break;

case 2:

out.println("two");

break;

default:

out.println("想定外");

}

%>
    </body>
</html>
