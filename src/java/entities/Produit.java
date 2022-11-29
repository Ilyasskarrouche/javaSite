/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 *
 * @author Lachgar
 */
@Entity
@NamedQuery(name = "findProduit", query = "select p.id , p.nom , p.designation, p.prix , p.image from Produit p")
public class Produit implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nom;
    private String designation;
    private double prix;
    private String image;
    private String unite;
    
    @ManyToOne(cascade = CascadeType.DETACH)
    private Categorie categorie;
    
    @ManyToOne(cascade = CascadeType.DETACH)
    private Marque marque;
    
    @OneToMany(mappedBy = "produit",fetch = FetchType.EAGER)
    private List<LigneCommande> lignecommande;

    public Produit(String nom, String designation, double prix, String image, Categorie categorie, Marque marque) {
        this.nom = nom;
        this.designation = designation;
        this.prix = prix;
        this.image = image;
        this.categorie = categorie;
        this.marque = marque;
    }

    public Produit(String nom, String designation, double prix, String image, String unite, Categorie categorie, Marque marque) {
        this.nom = nom;
        this.designation = designation;
        this.prix = prix;
        this.image = image;
        this.unite = unite;
        this.categorie = categorie;
        this.marque = marque;
       
    }

    public String getUnite() {
        return unite;
    }

    public void setUnite(String unite) {
        this.unite = unite;
    }

    public String getDesignation() {
        return designation;
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

    public Categorie getCategorie() {
        return categorie;
    }

    public void setCategorie(Categorie categorie) {
        this.categorie = categorie;
    }

    public List<LigneCommande> getLignecommande() {
        return lignecommande;
    }

    public void setLignecommande(List<LigneCommande> lignecommande) {
        this.lignecommande = lignecommande;
    }
    
    public Marque getMarque() {
        return marque;
    }

    public void setMarque(Marque marque) {
        this.marque = marque;
    }
    

    public Produit() {
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

    @Override
    public String toString() {
        return "Produit{" + "id=" + id + ", nom=" + nom + ", designation=" + designation + ", prix=" + prix + ", image=" + image + '}';
    }
    
    
    
}
