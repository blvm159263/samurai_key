/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import DAO.ConsolesDAO;
import DAO.GenreDAO;
import DAO.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Consoles;
import models.Genre;
import models.Product;

/**
 *
 * @author buile
 */
@WebServlet(name = "ShopgridController", urlPatterns = {"/shop-grid"})
public class ShopgridController extends HttpServlet {

    ProductDAO pd = new ProductDAO();
    GenreDAO gd = new GenreDAO();
    ConsolesDAO cd = new ConsolesDAO();

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

        //Lấy controller để sau truyền lại cho main hiện view cần hiển thị
        String controller = (String) request.getAttribute("controller");
        //Lấy action
        String action = (String) request.getAttribute("action");
        //Lấy op
        String op = (String) request.getAttribute("op");
        op = op.toLowerCase();
        listBase(request, response);
        switch (op) {
            case "listall":
                listAll(request, response);
                break;
            case "filter":
                filter(request, response);
                break;
            case "search":
                search(request, response);
                break;
        }
        request.setAttribute("controller", controller);
        request.setAttribute("ation", action);
        request.getRequestDispatcher("/WEB-INF/layout/main.jsp").forward(request, response);
    }

    protected void listBase(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Genre> listGenre = gd.list();
        List<Consoles> listConsoles = cd.list();
        int maxPrice = pd.maxPrice();
        int minPrice = pd.minPrice();
        List<Product> listNew = pd.listNew();
        request.setAttribute("listNew", listNew);
        request.setAttribute("minPrice", minPrice);
        request.setAttribute("maxPrice", maxPrice);
        request.setAttribute("listConsoles", listConsoles);
        request.setAttribute("listGenre", listGenre);

    }

    protected void listAll(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> listAll = new ArrayList<>();
        listAll = pd.listAll();
        int size = listAll.size();
        request.setAttribute("size", size);
        request.setAttribute("list", listAll);
    }

    protected void filter(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String genreID = request.getParameter("genreID");
        int minPrice = Integer.parseInt(request.getParameter("minPrice").substring(1));
        int maxPrice = Integer.parseInt(request.getParameter("maxPrice").substring(1));
        String consolesID = request.getParameter("consolesID");
        String rating = request.getParameter("rating");
        List<Product> list = pd.filter(genreID, consolesID, minPrice, maxPrice, rating);
        int size = list.size();
        request.setAttribute("curGen", genreID);
        request.setAttribute("curCons", consolesID);
        request.setAttribute("curRating", rating);
        request.setAttribute("curMin", minPrice);
        request.setAttribute("curMax", maxPrice);
        request.setAttribute("curRating", rating);
        request.setAttribute("list", list);
        request.setAttribute("size", size);

    }

    protected void search(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fname = request.getParameter("fname");
        List<Product> list = pd.findProductByName(fname);
        int size = list.size();
        request.setAttribute("list", list);
        request.setAttribute("fname", fname);
        request.setAttribute("size", size);

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
