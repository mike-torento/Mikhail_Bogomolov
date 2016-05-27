/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author miket_000
 */
public class addUserServlet extends HttpServlet {

       protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // processRequest(request, response);
       String login=request.getParameter("login");
       String password=request.getParameter("pass");
       String name=request.getParameter("name");
       String phone=request.getParameter("phone");
       String email=request.getParameter("email");

    
   
       User u = new User(login,password,name,phone,email);
           try {
               DAO.UserDAO.addNewUser(u);
               ServletContext SC = getServletContext();
            String ResultPage="/user.jsp";
            RequestDispatcher Disp = SC.getRequestDispatcher(ResultPage); 
           } catch (SQLException ex) {
               Logger.getLogger(addUserServlet.class.getName()).log(Level.SEVERE, null, ex);
           }
           
           
           
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }



}
