/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import function.submitComplainDao;
import function.submitEndorseDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Shariq Hussain
 */
public class submitEndorseController implements Controller {
     //@RequestMapping("/ComplaintView")
    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView m = new ModelAndView("submitendorsesucc");
        int i= 1;
        
        System.out.println("kya tum hy ho");
        String u_name= hsr.getParameter("FirstName");
        String u_cnic = hsr.getParameter("cnic");
        String u_desc= hsr.getParameter("desc");
        String endorse= hsr.getParameter("endorse");
        int cid = (int) hsr.getSession(false).getAttribute("cid");
        System.out.println(cid +u_name+" : "+u_cnic+" : "+" : "+u_desc + " : " + endorse);
        
        submitEndorseDao o = new submitEndorseDao();
        int i1 = o.list(cid,u_name,u_cnic,u_desc,endorse);
        System.out.println("int i1 data:"+i1);
              
        String temp = "complain success";
        
        m.addObject("success", temp);
        return m;
    }
}
