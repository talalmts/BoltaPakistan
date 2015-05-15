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
import org.hibernate.Query;


/**
 *
 * @author Talal Saleem
 */

public class loginDao {
//     public static void main(String[] args) {
//    loginDao U =  new loginDao();
//    String a = "rotlu.k";
//    String b = "hdfgdf";
//   int j = U.list(a,b);
//   System.out.println("retrun : "+j);
//     }

  public int list(String n,String p ) {
      Session session = HibernateUtil.getSessionFactory().openSession();
      Transaction tx = null;
      int i = 0;
      List<Users> lst = new ArrayList<Users>();  
      try{
         tx = session.beginTransaction();
         List employees = session.createQuery("FROM Users").list(); 
         
         for (Iterator iterator = 
                           employees.iterator(); iterator.hasNext();){
            Users u = (Users) iterator.next(); 
            String n1 = u.getUsername();
            String p1 =u.getPassword();
            if (n1.equals(n) && p1.equals(p)){
            lst.add(u);
            i = lst.get(0).getDepartment().getDid();
            System.out.println("did: "+ i);
                break;
            }
         }
         
         tx.commit();
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      }finally {
         session.close(); 
      }
      return i;
   }
 
}
