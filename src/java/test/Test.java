/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import Service.CategorieService;
import Service.LoginDao;
import Service.MarqueService;
import Service.ProduitService;
import entities.Categorie;
import entities.Marque;
import entities.Produit;
import entities.User;
import org.hibernate.Hibernate;
import util.HibernateUtil;

/**
 *
 * @author a
 */
public class Test {
    public static void main(String[] args) {
        //HibernateUtil.getSessionFactory().openSession();
     CategorieService es = new CategorieService();
       es.create(new Categorie("shoes"));
        es.create(new Categorie("accessoirs"));
        es.create(new Categorie("watches"));
         es.create(new Categorie("bags"));
        
         MarqueService fs = new MarqueService();
         fs.create(new Marque("nike"));
         fs.create(new Marque("adidas"));
         fs.create(new Marque("eagel"));
         fs.create(new Marque("converse"));
         
        ProduitService ps = new ProduitService();
        ps.create(new Produit("shoes","ghpgh",1800,"ghofp","shoes",es.findById(1),fs.findById(1)));
         ps.create(new Produit("dfgf","dfdn",1800,"dfg","dfg",es.findById(1),fs.findById(1)));
          ps.create(new Produit("vb","thphg",1800,"ghk,","^^",es.findById(1),fs.findById(1)));
           ps.create(new Produit("cx","tphot",1800,"v,kb,v","mlkj",es.findById(2),fs.findById(2)));
           ps.create(new Produit("ds","otht",1800,"bklb","48/9",es.findById(2),fs.findById(2)));
            ps.create(new Produit("fhg","bnv",1800,"bonppn","5523",es.findById(2),fs.findById(2)));
              ps.create(new Produit("fgjg","fjvn",1800,"binob","4/78",es.findById(3),fs.findById(3)));
               ps.create(new Produit("fghju","dfjf",1800,"rir","2156",es.findById(3),fs.findById(3)));
                ps.create(new Produit("rtt","giho",1800,"shoes","*8545",es.findById(3),fs.findById(3)));
                 ps.create(new Produit("ghj","yjig",1800,"hgiç","88/",es.findById(4),fs.findById(4)));
                  ps.create(new Produit("shhsoes","hjhy",1800,"gçtç","8855",es.findById(4),fs.findById(4)));
                   ps.create(new Produit("shogfges","shohjhes",1800,"ghofgh5","7458",es.findById(4),fs.findById(4)));
          //for (Produit c : ps.findByCateg(es.findById(1))) {

        //ps.delete(c);
        }
        
    }

