<%-- 
    Document   : challenge1-5
    Created on : 2017/03/15, 12:08:56
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
   out.println("数字を入力してください");
    
    int a = 0;
   

if(a == 1){

out.println("1です!");

} else if (a == 2){

out.println("プログラミングキャンプ!");

} else {

out.println("その他です!");

}
%>
    </body>
</html>
