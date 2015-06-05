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
public class AdminSearchComplaint implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        int j = (int) hsr.getSession(false).getAttribute("did");
        
        ModelAndView m = new ModelAndView("test");
        m.addObject("department", j);
        String str =  hsr.getParameter("Searchcomp");
        System.out.println(str);
        viewComplaintDao v = new viewComplaintDao();
        if(str != null){
        List<Complaint> lst = v.SearchAdmin(str, j);
      //  System.out.println(str);
        System.out.println("List : "+ lst);
        m = new ModelAndView("test");
        m.addObject("mylist", lst);
//        j = (int) hsr.getSession(false).getAttribute("did");
        m.addObject("department", j);
        return m;
        }
        
        m.getViewName();
        //return m;
      //  talal.name
         return m;     //  tsls.
    }
    //return ModelAndView(new Redirect("index.htm"));
}
