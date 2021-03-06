/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//[DATA][Random]=占いの処理。

import java.util.Date;
import java.util.Random;

//[RequestDispatcher] = jspを呼び出す。
import javax.servlet.RequestDispatcher;

//[ResultData]=JavaBeans。
import  org.camp.servlet.ResultData;


/**
 *
 * @author takuro
 */
public class FotuneTelling extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        final String Result = "/WEB-INF/jsp/FotuneTellingResult.jsp";
        
        //「大吉・中吉・小吉・吉・半吉・末吉・末小吉・凶・小凶・半凶・末凶・大凶」の配列を作成。
        String Lucklist[]={"大吉","中吉","小吉","吉","半吉","末吉","末小吉","凶","小凶","半凶","末凶","大凶"};
        
        //乱数クラスを生成する。
        Random rand = new Random();
        
        //nextIntメソッドで乱数(rand)を生成する。
        Integer index = rand.nextInt(Lucklist.length);
        
        //リクエストスコープへ結果を設定する。
        ResultData data = new ResultData();
        
        //ResultData.javaで定義したsetterを読み込む。日時と運勢の表示をする。
        data.setD(new Date());
        data.setLuck (Lucklist[index]);
        
        //占いをリクエストスコープに登録する。
        request.setAttribute("DATA",data);
        
        //JSPに渡る処理を行う。
        RequestDispatcher rd  = request.getRequestDispatcher(Result);
        rd.forward(request,response);
        
        //<body>の中で出力をする。[index]が乱数のため、lucklistの配列内がランダムで表示される。
        try{
        
        /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>本日の運勢</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>今日のあなたの運勢は… " + Lucklist[index] +"!" + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }finally{
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
