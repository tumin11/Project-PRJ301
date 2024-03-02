/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import DAL.DBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Book;
import model.Type;

/**
 *
 * @author hovut
 */
@WebServlet(name="PageController", urlPatterns={"/page"})
public class PageController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PageController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PageController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            
            DBContext db = new DBContext();
            int index=Integer.parseInt(request.getParameter("index"));
            int count=db.count();
            int pageSize=4;
            int endPage=count/pageSize;
            if(count%pageSize!=0){
                endPage++;
            }
           
            
            ArrayList<Book> list=db.getListBookByPage(index, pageSize);
            ArrayList<Book> top6_book = db.getTop6Book();
            ArrayList<Type> list_type = db.getListType();
            request.setAttribute("page",endPage);
            request.setAttribute("listBook",list);
            request.setAttribute("listType", list_type);
            request.setAttribute("top6Book", top6_book);
            request.getRequestDispatcher("home.jsp").forward(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BookManagerController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (java.sql.SQLException ex) {
            Logger.getLogger(BookManagerController.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
