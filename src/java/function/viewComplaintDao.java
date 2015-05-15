/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

import java.util.List; 
import java.util.Date;
import java.util.Iterator; 
 
import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import HibernateUtil.HibernateUtil;
import beans.Complaint;
import java.util.ArrayList;
import org.hibernate.Query;


/**
 *
 * @author Talal Saleem
 */

public class viewComplaintDao {
//     public static void main(String[] args) {
//    viewComplaintDao v = new viewComplaintDao();
//    Complaint T = v.UpdateStatus(4, "None");
//    System.out.println(T.getStatus());
//     }

  public List list( ) {
      Session session = HibernateUtil.getSessionFactory().openSession();
      Transaction tx = null;
      List<Complaint> lst =new ArrayList<Complaint>();  
      try{
         tx = session.beginTransaction();
         List complaints = session.createQuery("FROM Complaint").list(); 
         //int i = 0;
         for (Iterator iterator = 
                           complaints.iterator(); iterator.hasNext();){
            Complaint u = (Complaint) iterator.next(); 
            //System.out.println("First Name: " + u.getUsername()); 
            //System.out.println("  Last Name: " + u.getPassword());
            lst.add(u);
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
      return lst;
   }
  
  public List<Complaint> Search(String str){
     List<Complaint> lst =  list();
      List<Complaint> Cid  = new ArrayList<Complaint>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
         for (Iterator iterator = lst.iterator(); iterator.hasNext();)
         {
            Complaint u = (Complaint) iterator.next(); 
            String a = u.getDescription().toLowerCase();
            if(a.contains(str.toLowerCase())){
                Cid.add(u);
            }
         }
        return Cid;
    }
    public List<Complaint> SearchAdmin(String str,int did){
     List<Complaint> lst =  list();
      List<Complaint> Cid  = new ArrayList<Complaint>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        
         for (Iterator iterator = lst.iterator(); iterator.hasNext();)
         {
            Complaint u = (Complaint) iterator.next(); 
            String a = u.getDescription().toLowerCase();
            if(a.contains(str.toLowerCase()) && u.getDepartment().getDid() == did){
                Cid.add(u);
            }
         }
        return Cid;
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
  public Complaint UpdateStatus(int cid,String status){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        Complaint c = null;
              try{
         tx = session.beginTransaction();
        Query query = session.createQuery("FROM Complaint where Cid = :id ");
        query.setParameter("id", cid);
        List<Complaint> list = query.list();
        c = (Complaint)list.get(0);
        c.setStatus(status);
         session.update(c); 


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
