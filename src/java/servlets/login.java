/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlets;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import connection.*;
import java.security.MessageDigest;
import sun.misc.*;
/**
 *
 * @author SAURABH
 */
public class login extends HttpServlet {
    HttpSession session;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String uname=request.getParameter("username");
        String pass = request.getParameter("passwd");



        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        Config c = new Config();
        con = c.getcon();
        try
        {
            MessageDigest MD5=MessageDigest.getInstance("MD5");
            MD5.update(pass.getBytes(),0,pass.getBytes().length);
            byte[] hashvalue=MD5.digest();
            String passwd=new BASE64Encoder().encode(hashvalue);
            
            st=con.createStatement();
            String query="select * from users where username='"+uname+"'";
            rs=st.executeQuery(query);
            if(rs.next())
            {

                if(passwd.equals(rs.getString("password")))
                {
                    int flag = Integer.parseInt(rs.getString("flag"));
                    if(flag==1)
                    {
                        session.setAttribute("username",rs.getString("fullname"));
                        session.setAttribute("userid",rs.getString("username"));
                        session.setAttribute("pic",rs.getString("pic"));
                        con.close();
                        response.sendRedirect("profile.jsp");
                    }
                    else
                    {
                        response.sendRedirect("login.jsp?Verify=True");
                    }
                }
                else
                {
                    con.close();
                    response.sendRedirect("login.jsp?Retry=True");
                }
            }
            else{
               con.close();
               response.sendRedirect("login.jsp?Retry=True");
            }

        }
        catch(Exception e)
        {
            out.println("Error="+e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        session = request.getSession(true);
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
