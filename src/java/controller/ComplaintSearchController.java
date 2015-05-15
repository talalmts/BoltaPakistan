/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.

*/
package controller;

import beans.Complaint;
import beans.Users;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import function.UserDao;
import function.viewComplaintDao;
import java.util.List;

/**
 *
 * @author Talal Saleem
 */
public class ComplaintSearchController implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView m = new ModelAndView("Search");
        
        String str =  hsr.getParameter("Search1");
        System.out.println(str);
        viewComplaintDao v = new viewComplaintDao();
        if(str != null){
        List<Complaint> lst = v.Search(str);
      //  System.out.println(str);
        System.out.println("List : "+ lst);
        m = new ModelAndView("Search");
        m.addObject("mylist", lst);
        return m;
        }
        
        m.getViewName();
        //return m;
      //  talal.name
         return m;     //  tsls.
    }
    //return ModelAndView(new Redirect("index.htm"));
}
