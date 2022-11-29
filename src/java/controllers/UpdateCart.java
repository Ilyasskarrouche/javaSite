/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.LigneCommande;
import entities.LigneCommandePK;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Service.LigneCommandeService;

/**
 *
 * @author User
 */
@WebServlet(name = "UpdateCart", urlPatterns = {"/UpdateCart"})
public class UpdateCart extends HttpServlet {

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
        int idproduit = Integer.parseInt(request.getParameter("idproduit"));
        int commandeid = Integer.parseInt(request.getParameter("idcommande"));
        int arg = Integer.parseInt(request.getParameter("arg"));
        LigneCommandeService lcs = new LigneCommandeService();
        LigneCommandePK lcPK = new LigneCommandePK(idproduit,commandeid);
        LigneCommande tmp = lcs.getByPK(lcPK);
        if (arg == 1) {
            //munis
            tmp.setQuantité(((tmp.getQuantité())-1));
            if (tmp.getQuantité() == 0) {
                lcs.delete(tmp);
                
            } else {
                lcs.update(tmp);
                
            }
        }
        if (arg == 0) {
            //add
            tmp.setQuantité(((tmp.getQuantité())+1));
            lcs.update(tmp);
            
        }
        RequestDispatcher rd = request.getRequestDispatcher("ListCart");
        rd.forward(request, response);
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
