/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author Lachgar
 */
@Entity
public class Produit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nom;
    private String designation;
    private double prix;
    private String image;
    private String inite;
    @ManyToOne(targetEntity = Marque.class)
    private Marque marque;
    @ManyToOne(targetEntity = Categorie.class)
    private Categorie categorie;
    
    public Produit() {
    }

    public Produit(String nom, String designation, double prix, String image, String inite, Marque marque, Categorie categorie) {
        this.nom = nom;
        this.designation = designation;
        this.prix = prix;
        this.image = image;
        this.inite = inite;
        this.marque = marque;
        this.categorie = categorie;
    }

   

    public String getDesignation() {
        return designation;
    }

    public Marque getMarque() {
        return marque;
    }

    public void setMarque(Marque marque) {
        this.marque = marque;
    }

    public Categorie getCategorie() {
        return categorie;
    }

    public void setCategorie(Categorie categorie) {
        this.categorie = categorie;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getInite() {
        return inite;
    }

    public void setInite(String inite) {
        this.inite = inite;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
    
    
    
}
