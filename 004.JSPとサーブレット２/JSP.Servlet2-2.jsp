<%-- 
    Document   : JSP.Servlet2-2
    Created on : 2017/04/27, 14:37:53
    Author     : takuro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP.Servlet2-2</title>
    </head>
    <body>

<%!//ユーザー定義メソッドの作成をする際は%に!を付ける。
    
    //「getProf」メソッドを作成する。名前、生年月日、自己紹介を表示するメソッドにするため、戻り値「return」に記入する。
    String getProf(){                                                                                                                                                                                                                                                        
        return "名前：宇田川拓郎<br>"+"生年月日：1989年10月18日<br>"+"自己紹介：Javaの勉強をしています<br><br>";
    }
%>
<%
    //「getProf」のメソッドを10回呼び出して表示する処理。
    for(int i=0;i<10;i++){
        
        out.println(getProf());
    }
%>
    </body>
</html>