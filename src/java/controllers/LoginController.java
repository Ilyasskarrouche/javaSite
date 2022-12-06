/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Service.LoginDao;
import entities.Admin;
import entities.Client;
import entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    private LoginDao loginDao;
    private User user;
    
    
   public void init() {
        loginDao = new LoginDao();
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.sendRedirect("catalogue.jsp");
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            authenticate(request, response);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

   private void authenticate(HttpServletRequest request, HttpServletResponse response)
    throws Exception {
        String email = request.getParameter("email");
        String password = MD5(request.getParameter("password"));
        User user = LoginDao.findByEmail(email);
        

        if (loginDao.validate(email, password)) {
           if (user instanceof Client) {             
            RequestDispatcher dispatcher = request.getRequestDispatcher("catalogue.jsp");
            dispatcher.forward(request, response);
        } 
           else if(user instanceof Admin){
               RequestDispatcher dispatcher = request.getRequestDispatcher("produit.jsp");
            dispatcher.forward(request, response);
           }
        }
                else {
            throw new Exception("Login not successful..");
        }
    
   }     
   public static String MD5(String s) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            BigInteger bi = new BigInteger(1, md.digest(s.getBytes()));
            return bi.toString(16);
        } catch (NoSuchAlgorithmException ex) {
            ex.printStackTrace();
            return null;
        }
    }
   }
  


