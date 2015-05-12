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
import beans.Users;
import java.util.ArrayList;


/**
 *
 * @author Talal Saleem
 */

public class UserDao {
//     public static void main(String[] args) {
//    UserDao U =  new UserDao();
//    
//    List<Users> lst = U.list();
//   System.out.println(lst.get(1).getUsername());
//     }

  public List list( ) {
      Session session = HibernateUtil.getSessionFactory().openSession();
      Transaction tx = null;
      List<Users> lst =new ArrayList<Users>();  
      try{
         tx = session.beginTransaction();
         List employees = session.createQuery("FROM Users").list(); 
         //int i = 0;
         for (Iterator iterator = 
                           employees.iterator(); iterator.hasNext();){
            Users u = (Users) iterator.next(); 
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
    
}
