/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import cart.CartBean;
import cart.ProductDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

/**
 *
 * @author Genn
 */
public class ControllerCartBean extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
            if (action.equals("Add to Cart")) {
                HttpSession session = request.getSession(true);
                CartBean a = (CartBean) session.getAttribute("SHOP");
                if (a == null) {
                    a = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String price = request.getParameter("txtPrice");
                float pri = Float.parseFloat(price);
                String image = request.getParameter("txtImage");
                model.Product s = new Product(code, name, pri, image);
                cart.ProductDTO sp = new ProductDTO(s);
                a.addSanPham(sp);
                session.setAttribute("SHOP", a);
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            } else if (action.equals("Add to Cart ")) {
                HttpSession session = request.getSession(true);
                CartBean a = (CartBean) session.getAttribute("SHOP");
                if (a == null) {
                    a = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String price = request.getParameter("txtPrice");
                float pri = Float.parseFloat(price);
                String image = request.getParameter("txtImage");
                model.Product s = new Product(code, name, pri, image);
                cart.ProductDTO sp = new ProductDTO(s);
                a.addSanPham(sp);
                session.setAttribute("SHOP", a);
                RequestDispatcher rd = request.getRequestDispatcher("index_1.jsp");
                rd.forward(request, response);
            } else if (action.equals("View Cart")) {
                RequestDispatcher rd = request.getRequestDispatcher("showcart.jsp");
                rd.forward(request, response);
            }else if (action.equals("View Cart ")) {
                RequestDispatcher rd = request.getRequestDispatcher("showcart_1.jsp");
                rd.forward(request, response);
            } else if(action.equals("Back to Products")){
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }else if(action.equals("Back to Products ")){
                RequestDispatcher rd = request.getRequestDispatcher("index_1.jsp");
                rd.forward(request, response);
            } else if (action.equals("Remove")) {
                String[] list = request.getParameterValues("rmv");
                if(list != null){
                    HttpSession session = request.getSession();
                    if(session != null){
                        cart.CartBean a = (CartBean)session.getAttribute("SHOP");
                        if(a != null){
                            for(int i = 0 ; i<list.length;i++){
                                a.removeSanpham(list[i]);
                            }
                            session.setAttribute("SHOP", a);
                        }
                    }
                }
                String url="ControllerCartBean?action=View Cart";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }else if (action.equals("Remove ")) {
                String[] list = request.getParameterValues("rmv ");
                if(list != null){
                    HttpSession session = request.getSession();
                    if(session != null){
                        cart.CartBean a = (CartBean)session.getAttribute("SHOP");
                        if(a != null){
                            for(int i = 0 ; i<list.length;i++){
                                a.removeSanpham(list[i]);
                            }
                            session.setAttribute("SHOP", a);
                        }
                    }
                }
                String url="ControllerCartBean?action=View Cart ";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
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
