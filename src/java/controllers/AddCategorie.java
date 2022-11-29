/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Categorie;
import entities.Marque;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Service.CategorieService;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author user
 */
@WebServlet(name = "AddCategorie", urlPatterns = {"/AddCategorie"})
public class AddCategorie extends HttpServlet {

    private CategorieService categorieservice;

    public void init() {
        categorieservice = new CategorieService();
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
        String nom = request.getParameter("nomc");
       

        Categorie categorie = new Categorie();
        categorie.setNom(nom);
       

        categorieservice.create(categorie);

        RequestDispatcher dispatcher = request.getRequestDispatcher("categorie.jsp");
        dispatcher.forward(request, response);
    }

}