/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Service.CategorieService;
import Service.MarqueService;
import Service.ProduitService;
import entities.Categorie;
import entities.Marque;
import entities.Produit;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "AddProduit", urlPatterns = {"/AddProduit"})
public class AddProduit extends HttpServlet {

    private ProduitService produitservice;
    private MarqueService ms;
    private CategorieService cs;
    public void init() {
        produitservice = new ProduitService();
        ms = new MarqueService();
        cs = new CategorieService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        register(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.sendRedirect("register.jsp");
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String nom = request.getParameter("nom");
        String designation = request.getParameter("desination");
         Double prix = Double.parseDouble(request.getParameter("prix"));
          String image = request.getParameter("image");
           String unite = request.getParameter("unite");
            Marque marque= ms.findById(Integer.parseInt(request.getParameter("marque")));
            Categorie categorie = cs.findById(Integer.parseInt(request.getParameter("categorie")));
        Produit produit = new Produit();
        produit.setNom(nom);
         produit.setDesignation(designation);
          produit.setPrix(prix);
           produit.setImage(image);
            produit.setInite(unite);
             produit.setMarque(marque);
              produit.setCategorie(categorie);

        produitservice.create(produit);

        RequestDispatcher dispatcher = request.getRequestDispatcher("register-success.jsp");
        dispatcher.forward(request, response);
    }
}
