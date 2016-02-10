/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlets;
import java.sql.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.io.*;
import com.oreilly.servlet.MultipartRequest;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import connection.*;
/**
 *
 * @author aqfaridi
 */
public class profileupdate extends HttpServlet {
   HttpSession session;
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try{
           Config c = new Config();
           Connection con = c.getcon();
           String userid=(String)session.getAttribute("userid");
           out.println(userid);
           String path = getServletContext().getRealPath("/");
           path = path +"uploadimg";
           MultipartRequest m = new MultipartRequest(request,path);
           out.println("hi");
           String pic = m.getFilesystemName("pic");
           out.println(pic);
           if(pic=="" || pic==null)
               pic="default.png";

           session.setAttribute("pic",pic);
           //out.println("pic is"+pic);
           String fname=m.getParameter("fname");
         
           String d = m.getParameter("day");
           String ma = m.getParameter("month");
           String y = m.getParameter("year");
           String dob = d+"/"+ma+"/"+y;
         //  String dob=m.getParameter("dob");
           String sex=m.getParameter("sex");
           if(sex==null)
               sex="NA";
           String phone=m.getParameter("phone");
           String ccity=m.getParameter("ccity");
           String country=m.getParameter("country");
           String address=m.getParameter("address");
           String website=m.getParameter("website");
           String aboutme=m.getParameter("aboutme");


            out.println("here");
            String q="UPDATE users SET pic='"+pic+"',fullname='"+fname+"',dob='"+dob+"',gender='"+sex+"',mobile='"+phone+"',city='"+ccity+"',country='"+country+"',address='"+address+"',website='"+website+"',aboutme='"+aboutme+"' WHERE username='"+userid+"'";
            out.println(q);
            Statement st = con.createStatement();
            int result = st.executeUpdate(q);
        
           out.println(result);

        if(result==1)
        {
            session.setAttribute("pic", pic);
            //out.println("you have Successfully saved your data");
            con.close();
            response.sendRedirect("profile.jsp?SuccessUpdate=True");
        }
        else
        {
            out.println("Try again");
        }
     }
      catch(Exception e2)
        {
             e2.printStackTrace();
        }

        finally {
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        session = request.getSession();
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
