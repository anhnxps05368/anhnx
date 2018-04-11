/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.Customerz;
import model.Productsz;
import model.Roles;

/**
 *
 * @author Genn
 */
public class Customers extends HttpServlet {

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
        String user = request.getParameter("txtUser");
        String pass = request.getParameter("txtPass");
        String url;
        try {
            String action = request.getParameter("action");
            if (action.equals("Sign in")) {
                Roles cc = new Roles();
                Customerz c = new Customerz();
                boolean exist = false;
                exist = c.checkLogin(user, pass);
                url = "error.jsp";
                if (exist) {
                    if (cc.getRoles().equals("1")) {
                        url = "index_admn.jsp";
                        HttpSession session = request.getSession(true);
                        session.setAttribute("USER", user);
                        RequestDispatcher rd = request.getRequestDispatcher(url);
                        rd.forward(request, response);
                    }
                    if (cc.getRoles().equals("0")) {
                        url = "index_1.jsp";
                        HttpSession session = request.getSession(true);
                        session.setAttribute("USER", user);
                        RequestDispatcher rd = request.getRequestDispatcher(url);
                        rd.forward(request, response);
                    }
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Registration")) {
                url = "registration.jsp";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Registor")) {
                String username = request.getParameter("txtUser");
                String password = request.getParameter("txtPass");
                String email = request.getParameter("txtEmail");
                String sdt = request.getParameter("txtSDT");
                String admin = request.getParameter("chkAdmin");
                boolean roles = false;
                if (admin != null) {
                    roles = true;
                }
                Customerz a = new Customerz();
                boolean result = a.insert(username, password, email, sdt, roles);
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                String code = request.getParameter("txtUser");
                Customerz a = new Customerz();
                a.delete(code);
                url = "customer.jsp";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
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
