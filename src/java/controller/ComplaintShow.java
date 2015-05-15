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
public class ComplaintShow implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView m = new ModelAndView("ComplaintView");
        String a = hsr.getParameter("Cid");
        a = a.replace("+-?\\\\d+ ","");
        int cid = Integer.parseInt(a);
        System.out.println(cid);
        viewComplaintDao v = new viewComplaintDao();
        Complaint c = v.GetCid(cid);
        m.addObject("mylist", c);
        m.getViewName();
        System.out.println(m.getViewName());
        
        //return m;
      //  talal.name
         return m;     //  tsls.
    }
    //return ModelAndView(new Redirect("index.htm"));
}
