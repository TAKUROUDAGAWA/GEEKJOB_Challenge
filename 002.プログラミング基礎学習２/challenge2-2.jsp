<%-- 
    Document   : challenge2-2
    Created on : 2017/03/15, 17:39:57
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
    
int spell  = 3;
    
switch(spell){

case 1:

out.println("英語");

break;

case 2:

out.println("日本語");

break;

default:

out.println("");

}
%>
    </body>
</html>
