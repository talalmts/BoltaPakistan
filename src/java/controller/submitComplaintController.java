/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Shariq Hussain
 */
import beans.Users;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import function.submitComplainDao;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import javax.servlet.http.Part;
import static jdk.nashorn.internal.objects.NativeError.getFileName;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.annotation.*;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.support.DefaultMultipartHttpServletRequest;



public class submitComplaintController implements Controller{
    
    //@Override
    @RequestMapping("/complaintForm")
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView m = new ModelAndView("submitcomplaintsucc");
        int i= 1;
        
        String u_name= hsr.getParameter("FirstName");
        String u_cnic = hsr.getParameter("cnic");
        String u_location = hsr.getParameter("lat");
        u_location +=","+ hsr.getParameter("lng");
        String u_type = hsr.getParameter("type");
        String u_desc= hsr.getParameter("desc");
        System.out.println(u_name+" : "+u_cnic+" : "+u_location+" : "+u_type+" : "+u_desc);
        
     
    
     hsr1.setContentType("text/html;charset=UTF-8");

         
        // Create path components to save the file
        final String path = "\\images";
         MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) hsr;

        CommonsMultipartFile file = (CommonsMultipartFile) multipartRequest
                .getFile("file");
        String fileName = file.getOriginalFilename();
        System.out.println(u_name+" : "+u_cnic+" : "+u_location+" : "+u_type+" : "+u_desc+ fileName);
        byte[] bytes = file.getBytes();
	BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File("C:\\Users\\Talal Saleem\\Documents\\Project_BoltaPakistan\\web\\resource\\images\\" + fileName)));
	buffStream.write(bytes);
	buffStream.close();
	//msg += "You have successfully uploaded " + fileName +"<br/>";
        //file.setNotes(ServletRequestUtils.getStringParameter(hsr, "notes"));
        //file.setType(multipartFile.getContentType());
        //file.setFile(multipartFile.getBytes());
     
     
        submitComplainDao o = new submitComplainDao();
        int i1 = o.list(u_name,u_cnic,u_location,u_type,u_desc,fileName);
        System.out.println("int i1 data:"+i1);
              
        String temp = "complain success";
        
        m.addObject("success", temp);
        return m;
            
            
        }
        
        //m.addObject("success", temp);
        
        
        //return m;
      //  talal.name
    }
    
