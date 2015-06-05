/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

import HibernateUtil.HibernateUtil;
import beans.Complaint;
import beans.Endorsement;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Shariq Hussain
 */
public class submitEndorseDao {
    public int list(int cid,String u_name,String u_cnic,String u_desc,String endorse) {
          Session session = HibernateUtil.getSessionFactory().openSession();
          
          session.beginTransaction();
          
          Endorsement endo = new Endorsement();
          
          Complaint complaint1 = GetCid(cid);
          endo.setComplaint(complaint1);
          endo.setLname(u_name);
          endo.setDescription(u_desc);
          endo.setCnic(u_cnic);
          if(endorse.equals("positive"))
              endo.setEndorsetype(true);
          if(endorse.equals("negative"))
              endo.setEndorsetype(false);
          
        session.save(endo);
 
        //Commit the transaction
        session.getTransaction().commit();
        return 1;
    }

  public Complaint GetCid(int cid){
       Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        Complaint c = null;
              try{
         tx = session.beginTransaction();
        Query query = session.createQuery("FROM Complaint where Cid = :id ");
        query.setParameter("id", cid);
        List<Complaint> list = query.list();
        c = (Complaint)list.get(0);
        System.out.println(" "+ c.getDescription());


         tx.commit();
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      }finally {
         session.close(); 
      }
  return c;
  }
}