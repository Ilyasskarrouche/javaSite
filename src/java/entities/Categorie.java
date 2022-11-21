/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 *
 * @author HP
 */
@Entity
public class Categorie {
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nom;
     @OneToMany(mappedBy = "categorie",fetch = FetchType.EAGER)
    private List<Produit> produits;
    @ManyToOne 
    private Categorie categories;
    @OneToMany(mappedBy = "categories",fetch = FetchType.EAGER)
    private List<Categorie> sousCategorie;

    public Categorie(String nom, List<Produit> produits) {
        this.nom = nom;
        this.produits = produits;
       
    }

    public Categorie() {
    }

    public Categorie(String nom) {
        this.nom = nom;
    }

   
    public List<Produit> getProduits() {
        return produits;
    }

    public void setProduits(List<Produit> produits) {
        this.produits = produits;
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
