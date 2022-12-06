/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import dao.IDao;
import entities.Commande;
import entities.LigneCommande;
import entities.LigneCommandePK;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author User
 */
public class LigneCommandeService implements IDao<LigneCommande> {

    @Override
    public boolean create(LigneCommande o) {
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.save(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return false;    
    }

    @Override
    public boolean delete(LigneCommande o) {
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.delete(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return false;    
    }

    @Override
    public boolean update(LigneCommande o) {
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.update(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return false;    
    }

    @Override
    public LigneCommande findById(int id) {
        LigneCommande ligneCommande = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            ligneCommande = (LigneCommande) session.get(LigneCommande.class, id);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return ligneCommande;  
    }

    @Override
    public List<LigneCommande> findAll() {
        List<LigneCommande> ligneCommandes = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            ligneCommandes = session.createQuery("from LigneCommande").list();
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return ligneCommandes;
        }
    
    public LigneCommande getByPK(LigneCommandePK lcpk) {
        LigneCommande lc = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            lc = (LigneCommande) session.getNamedQuery("findByLigneCommandePK").setParameter("lck", lcpk).uniqueResult();
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return lc;
                
    }
    
    public List<LigneCommande> getByCommande(Commande c) {
        List<LigneCommande> lc = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            lc =  session.getNamedQuery("findLigneCommandeByCommande").setParameter("c", c.getId()).list();
            
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return lc;
                
    }
    
    
    public List<LigneCommande> getByCommandeID(int id) {
        List<LigneCommande> lc = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            lc =  (List<LigneCommande>) session.createSQLQuery("select * from lignecommande p where p.commandeId = "+id).list();
            
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return lc;
                
    }
    
}
