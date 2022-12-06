/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.google.gson.Gson;
import entities.Categorie;
import entities.Client;
import entities.Commande;
import entities.LigneCommande;
import entities.LigneCommandePK;
import entities.Produit;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Service.CommandeService;
import Service.LigneCommandeService;
import Service.ProduitService;
import Service.UserService;


/**
 *
 * @author User
 */
@WebServlet(name = "AddCommande", urlPatterns = {"/AddCommande"})
public class AddCommande extends HttpServlet {

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
        //HttpSession session = request.getSession();
        ////String eid = (String)session.getAttribute("email");
       // if (eid == null) {
            // response.setContentType("application/json");
             //Gson gson = new Gson();
             //response.getWriter().write(gson.toJson(-1));
        //}
       // else {
        
            if (Integer.parseInt(request.getParameter("id"))==0){
            RequestDispatcher rd = request.getRequestDispatcher("/commandes.jsp");
            rd.forward(request,response);
            
            }
            CommandeService cs = new CommandeService();
            
            Commande cmd = cs.findById(Integer.parseInt(request.getParameter("id")));
            cmd.setStatus("Livre");
            cs.update(cmd);
            
            
            
            
                
            RequestDispatcher rd = request.getRequestDispatcher("/commandes.jsp");
            rd.forward(request,response);

        //}
        
        
        
        
        
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
