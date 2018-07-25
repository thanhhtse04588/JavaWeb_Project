/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Account;
import model.DAOAccount;
import Security.Md5;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MyPC
 */
public class AccountRegister extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String username, password, repass;
            username=request.getParameter("txtUser");
            password=request.getParameter("txtPass");
            repass=request.getParameter("txtRePass");
            DAOAccount dao=new DAOAccount();
            Account acc=dao.getAccount(username);
            if(username.trim().equals("")||password.trim().equals("")||
                    repass.trim().equals(""))
            {
                request.setAttribute("errorMess", "Please fill all field");
                RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
                rd.forward(request, response);
            }
            else if(!repass.equals(password))
            {
                request.setAttribute("errorMess", "Re enter password wrong");
                RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
                rd.forward(request, response);
            }
            else if(!acc.getType().equals("none"))
            {
                request.setAttribute("errorMess", "Username already exist");
                RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
                rd.forward(request, response);
            }
            else
            {
                password=Md5.md5(password);
                dao.addAccount(new Account(username, password, "user"));
                response.sendRedirect("Home.jsp");
            }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(AccountRegister.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(AccountRegister.class.getName()).log(Level.SEVERE, null, ex);
        }
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
