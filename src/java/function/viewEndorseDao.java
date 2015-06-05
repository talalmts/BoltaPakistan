/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

import HibernateUtil.HibernateUtil;
import beans.Complaint;
import beans.Endorsement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Shariq Hussain
 */
public class viewEndorseDao {
    public List getendorsement(int cid) {
      Session session = HibernateUtil.getSessionFactory().openSession();
      Transaction tx = null;
      List<Endorsement> endo =new ArrayList<Endorsement>();  
      try{
         tx = session.beginTransaction();
         String hql = "FROM Endorsement where cid = :c_id";
         Query query = session.createQuery(hql);
         query.setParameter("c_id",cid);
         endo = query.list();
         //int i = 0;
         
         for (Iterator iterator = 
                           endo.iterator(); iterator.hasNext();){
            Endorsement u = (Endorsement) iterator.next(); 
           System.out.println("desc: " + u.getDescription()); 
            //System.out.println("  Last Name: " + u.getPassword());
            //lst.add(u);
            //System.out.println(lst.get(i).getUsername());
         //i++;
         }
         
         tx.commit();
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      }finally {
         session.close(); 
      }
      return endo;
   }
}
