<%-- 
    Document   : challenge2-3
    Created on : 2017/03/15, 17:47:07
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
    long num = 1;
    long count = 20;
  for(long i = 0; i < count; i++ ){
  num *= 8;
  
    out.println(num);
   
}

%>
    </body>
</html>
