<%-- 
    Document   : FotuneTellingResult
    Created on : 2017/03/25, 16:35:56
    Author     : takuro
--%>
<%@page import = "jsp.ResultData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            ResultData data = (ResultData)request.getAttribute("DATA");
        %>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>今日の運勢</title>
    </head>
    <body>
        <%
            if(data != null){
                out.println("<h1>あなたの" + data.getD () +"運勢は、" + data.getluck() + "です!<h1>");
            }
        %>
        
    </body>
</html>
