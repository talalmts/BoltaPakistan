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
import function.UserDao;
import java.util.List;

/**
 *
 * @author Talal Saleem
 */
public class UserController implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView m = new ModelAndView("test");
        UserDao o = new UserDao();
        List<Users> lst = o.list();
        System.out.println(lst.get(1).getUsername());
        m.addObject("mylist", lst);
        m.getViewName();
        System.out.println(m.getViewName());
        
        //return m;
      //  talal.name
         return m;     //  tsls.
    }
    //return ModelAndView(new Redirect("index.htm"));
}
