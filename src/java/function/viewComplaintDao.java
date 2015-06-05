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
import beans.Department;
import beans.Track;
import java.util.ArrayList;
import org.hibernate.Query;


/**
 *
 * @author Talal Saleem
 */

public class viewComplaintDao {
//     public static void main(String[] args) {
//    viewComplaintDao v = new viewComplaintDao();
//    int cid = 22;
//    List<Track> T = v.Tracking(cid);
//    System.out.println(T);
//    System.out.println(T.get(0).getComplaint().getCid());
//    System.out.println(T.get(0).getDepartment().getDid());
//     System.out.println(T.get(1).getComplaint().getCid());
//    System.out.println(T.get(1).getDepartment().getDid());
//    
////        System.out.println(T.get(1).getComplaint().getDepartment().getDid());
//    //System.out.println(T.getDepartment().getDid());
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
         //session.close(); 
      }
  return c;
  }
  public Complaint UpdateForward(int cid,int did){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        Complaint c = null;
              try{
         tx = session.beginTransaction();
        Query query = session.createQuery("FROM Complaint where Cid = :id ");
        query.setParameter("id", cid);
        List<Complaint> list = query.list();
        c = (Complaint)list.get(0);
         String track = c.getDepartment().getDname().toString(); 
        query = session.createQuery("FROM Department where did = :id ");
        query.setParameter("id", did);
        
        List<Department> lst = query.list();
        Department d = (Department)lst.get(0);
        System.out.println("did = "+ d.getDid());
        c.setDepartment(d);
        c.setType(d.getDname());
        System.out.println("cid = "+ c.getDepartment().getDid());
       track += "->" +c.getDepartment().getDname().toString();  
        Track T = new Track(c,d,new Date(),track);
        session.saveOrUpdate(c);
        session.save(T); 
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
    
  public List<Track> Tracking(int cid){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
         List<Track> list =null;
              try{
        tx = session.beginTransaction();
        Query query = session.createQuery("FROM Track where Cid = :id order by trackdate asc");
        query.setParameter("id", cid);
        list = query.list();
         tx.commit();
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      }finally {
         //session.close(); 
      }
  return list;      
  }
    
}
