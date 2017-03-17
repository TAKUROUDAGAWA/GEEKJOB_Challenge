<%-- 
    Document   : challenge1-6
    Created on : 2017/03/17, 10:17:29
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
     <%    /*クエリストリングを利用して、以下の処理を実現してください。
スーパーのレジでレシートを作る仕組みを作成します。
クエリストリングで総額・個数・商品種別を受け取って処理します。
①商品種別は、３つ。１：雑貨、２：生鮮食品、３：その他
まずは、この商品種別を表示してください。
②総額と個数から１個当たりの値段を算出してください。
総額と１個当たりの値段を表示してください。
③3000円以上購入で4%、5000円以上購入で5%のポイントが付きます。
購入額に応じたポイントの表示を行ってください。*/
        
     String receipt1 = request.getParameter("shubetsu");
     String receipt2 = request.getParameter("sougaku");
     String receipt3 = request.getParameter("kosuu");

int shubetsu =Integer.parseInt(receipt1);
int sougaku  =Integer.parseInt(receipt2);
int kosuu    =Integer.parseInt(receipt3);

int nedan = ( sougaku / kosuu );

if( sougaku >= 3000){

out.println("1個あたりの値段は" + nedan + "円です。");

out.println("ポイントは" + ( sougaku * 0.04 ) + "です。");

}else{

if ( sougaku >= 5000){

out.println("ポイントは" + ( sougaku * 0.05 ) + "です。" );

 }

}
%>

</body>
</html>
