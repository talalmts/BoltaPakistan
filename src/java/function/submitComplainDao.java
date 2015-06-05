/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

import HibernateUtil.HibernateUtil;
import beans.Complaint;
import beans.Department;
import beans.Track;
import beans.Users;
import java.sql.Timestamp;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import javax.servlet.annotation.MultipartConfig;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Shariq Hussain
 */

@MultipartConfig(location="/images", 
        fileSizeThreshold=1024*1024,
        maxFileSize=1024*1024*5, 
        maxRequestSize=1024*1024*5*5)


public class submitComplainDao {
    
      public int list(String u_name,String u_cnic,String u_location,String u_type,String u_desc,String fileName) {
      Session session = HibernateUtil.getSessionFactory().openSession();
      int i = 0;
        
      //try{
         session.beginTransaction();

        //Add new Employee object
        Complaint comp = new Complaint();
        comp.setType(u_type);
        comp.setDescription(u_desc);
        comp.setLaunchname(u_name);
        comp.setCnic((u_cnic));
        //comp.setImage(fileName);
        int did=1;
        if(u_type.equals("Health")) {
            did = 1;
          }
        if(u_type.equals("Education")) {
            did = 2;
          }
        if(u_type.equals("Anti-Corruption")) {
            did = 3;
          }
        if(u_type.equals("City Council")) {
            did = 4;
          }
        if(u_type.equals("Police")) {
            did = 5;
          }
        
        
        Department department1 = Getdid(did);
        //System.out.println(department1.getdid);
        comp.setDepartment(department1);
        comp.setStatus("No");
        comp.setLocation(u_location);
        comp.setLaunchdate(new Timestamp(System.currentTimeMillis()));
        comp.setImage(fileName);
        

        //Save the employee in database
        session.save(comp);
 
        //Commit the transaction
        session.getTransaction().commit();
        
        
        session.beginTransaction();
        Track T = new Track(); 
        Complaint complaint1 = Getcid();
        //System.out.println(department1.getdid);
        T.setComplaint(complaint1);
        T.setTrackdate(new Date());
        T.setDepartment(department1);
        T.setTracking("lame");
        session.save(T);
 
        //Commit the transaction
        session.getTransaction().commit();
            
            //System.out.println("First Name: " + u.getUsername()); 
            //System.out.println("  Last Name: " + u.getPassword());
            //System.out.println(lst.get(i).getUsername());
         //i++;
         
      //}catch (HibernateException e) {
        // if (tx!=null) tx.rollback();
         //e.printStackTrace(); 
      //}finally {
        // session.close(); 
      //}
      return 1;
      }
      public Complaint Getcid(){
       Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        int id = 1;
        Complaint c = null;
        try{
         System.out.println("Hello Before iteration");
         tx = session.beginTransaction();
         String hql = "Select max(cid) from Complaint";
        Query query = session.createQuery(hql);
        List results = query.list();
        id = (int) results.get(0);


         tx.commit();
         tx = null;
         System.out.println("Hello LAst iteration is"+ id);
        tx = session.beginTransaction();
        String hq2 = "FROM Complaint C WHERE C.cid = " + id;
        System.out.println(hq2);
        Query query2 = session.createQuery(hq2);
        List<Complaint> results2 = query2.list();
        c = (Complaint)results2.get(0);
        System.out.println("Hello I was here");


         tx.commit();
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      }finally {
         session.close(); 
      }
  return c;
  }
      
      public Department Getdid(int cid){
       Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        Department c = null;
              try{
         tx = session.beginTransaction();
        Query query = session.createQuery("FROM Department where did = :id ");
        query.setParameter("id", cid);
        List<Department> list = query.list();
        c = (Department)list.get(0);
        


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
