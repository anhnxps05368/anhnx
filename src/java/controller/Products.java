/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
import model.Productsz;

/**
 *
 * @author Genn
 */
public class Products extends HttpServlet {

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
        try {
            String action = request.getParameter("action");
            if (action.equals("Search")) {
                String tensp = request.getParameter("txtTenSP");
                Productsz a = new Productsz();
                List<Product> list = new ArrayList<Product>();
                list = a.showProduct(tensp);
                request.setAttribute("listSP", list);
                RequestDispatcher rd = request.getRequestDispatcher("products.jsp");
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                String code = request.getParameter("txtCode");
                Productsz a = new Productsz();
                a.delete(code);
                String url = "Products?action=Search&txtTenSP=";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Edit")) {
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String price = request.getParameter("txtPrice");
                float pri = Float.parseFloat(price);
                String image = request.getParameter("txtImage");
                Product a = new Product(code,name,pri,image);
                request.setAttribute("SP", a);
                String url = "editProducts.jsp";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("New Product")) {
                String url = "newProducts.jsp";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Update")) {
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String price = request.getParameter("txtPrice");
                float pri = Float.parseFloat(price);
                String image = request.getParameter("txtImage");
                Product b = new Product(code,name,pri,image);
                Productsz a = new Productsz();
                a.update(b.getCode(), b.getName(), b.getPrice(), b.getImage());
                String url = "Products?action=Search&txtTenSP=";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Insert")) {
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String price = request.getParameter("txtPrice");
                float pri = Float.parseFloat(price);
                String image = request.getParameter("txtImage");
                Productsz a = new Productsz();
                a.insert(code, name, pri, image);
                String url = "Products?action=Search&txtTenSP=";
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
