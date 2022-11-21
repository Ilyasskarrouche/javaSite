/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;

/**
 *
 * @author HP
 */
@Entity
public class Facture {
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
     @Temporal(javax.persistence.TemporalType.DATE)
    private Date date;
    private double montant;
    @OneToMany(mappedBy = "facture",fetch = FetchType.EAGER)
    private List<Commande> commandes;

    public Facture(Date date, double montant, List<Commande> commandes) {
        this.date = date;
        this.montant = montant;
        this.commandes = commandes;
    }

    public Facture() {
    }

    public List<Commande> getCommandes() {
        return commandes;
    }

    public void setCommandes(List<Commande> commandes) {
        this.commandes = commandes;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getMontant() {
        return montant;
    }

    public void setMontant(double montant) {
        this.montant = montant;
    }
    
   
    
    
    
}
