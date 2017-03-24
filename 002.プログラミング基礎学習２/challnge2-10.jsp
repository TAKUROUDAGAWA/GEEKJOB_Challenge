<%-- 
    Document   : challnge2-10-10
    Created on : 2017/03/17, 15:58:49
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
 <%@page import="java.util.ArrayList"%>
 
 <%
/*クエリストリングで入力された正の整数を取得する。*/ 
    String spell1 = request.getParameter("spell");
        
    ArrayList<Integer> AL =
            new ArrayList<Integer>();
    
    //1桁の素数、「2」「3」「5」「7」をArrayListに格納する。
     AL.add(2);
     AL.add(3);
     AL.add(5);
     AL.add(7);
     
     //クエリストリングで入手した文字列を数値に変換する。Integer.parseInt();
     int spell2 = Integer.parseInt(spell1);
     
     out.println("元の値は" + spell2);
     out.println( "1ケタの素因数は" );
     
     int j = 0;
     
     //簡易素因数分解をする為、ArrayList内の素数を順に処理をする。変数「VAL」= 素数
     for (Integer VAL : AL) {
     
     int i = 0;
     
     /*整数「spell2」を素数「VAL」で割った時、余りが出なければ同じ「VAL」で割る処理。
     余りが出たら次の「VAL」に移行し処理を続ける。*/
     while(spell2 % VAL == 0){
         spell2 = spell2/VAL;
         i++;
    }
     //「i=ループ回数」1つのVALで何回ループしたかがわかる。何乗したかを表示する為のループ処理。
     if(i>0){
     
     /*「VAL^i」*「VAL^i」{(VALの2乗) * (VALの2乗)}の「*」を表示する為のループ処理。
     次のVALに移行した時、2回目のループから「VAL^i」の前に「*」を表示する。*/
     if(j>0){
         out.print("*");
     }
         j++;
         out.print(VAL+"^"+i);   
     }
    }
     //1桁の素数で割り切れなかった時の余りを表示する為のループ処理。2桁以上の素数、11～が表示される。
     if(spell2>10){
         out.println("<br>"+"その他＝"+spell2);
     }
     %>
     /*「例」整数88を簡易素因数分解する場合。
     元の値＝88、1ケタの素因数＝2^3、その他＝11が表示されます。
     http://localhost:8080/challenge2/challenge2-10.jsp?number=88 */