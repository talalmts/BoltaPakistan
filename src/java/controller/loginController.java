/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.

*/
package controller;

import beans.Users;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import function.loginDao;
import java.util.List;

/**
 *
 * @author Talal Saleem
 */
public class loginController implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView m = new ModelAndView("login");
        String u_name= hsr.getParameter("FirstName");
        String u_password = hsr.getParameter("password1");
        String temp = "Username or password incorrect";
        System.out.println(u_name+" : "+u_password);
        loginDao o = new loginDao();
        int i1 = o.list(u_name,u_password);
        if (i1 == 1){
            temp = "login success";
            m = new ModelAndView("test");
            m.addObject("success", temp);
            return m;
            
            
        }
        
        m.addObject("success", temp);
        
        
        
        
        //return m;
      //  talal.name
         return m;     //  tsls.
    }
    //return ModelAndView(new Redirect("index.htm"));
}
