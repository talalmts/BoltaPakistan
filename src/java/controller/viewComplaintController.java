/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.

*/
package controller;

import beans.Complaint;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import function.viewComplaintDao;
import java.util.List;

/**
 *
 * @author Talal Saleem
 */
public class viewComplaintController implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView m = new ModelAndView("signup1");
        viewComplaintDao o = new viewComplaintDao();
        List<Complaint> lst = o.list();
        System.out.println(lst.get(1).getCnic());
        m.addObject("complaintList", lst);
       
        
        //return m;
      //  talal.name
         return m;     //  tsls.
    }
    
}
