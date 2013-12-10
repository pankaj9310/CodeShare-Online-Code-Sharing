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
/**
 *
 * @author SAURABH
 */
public class delete extends HttpServlet {

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
        String username =  request.getParameter("user");
        String who = request.getParameter("who");
        Connection con;
        ResultSet rs;
        Statement st;
        String query="";
    
    try
        {
            Config c = new Config();
            con = c.getcon();
            st=con.createStatement();
            if(who.equals("user"))
            {
                query = "delete from users where username='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp?user=True");
            }
            else if(who.equals("spoj"))
            {
                query = "delete from spoj where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }
             else if(who.equals("codechef"))
            {
                query = "delete from codechef where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }
             else if(who.equals("codeforces"))
            {
                query = "delete from codeforces where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }
             else if(who.equals("codejam"))
            {
                query = "delete from codejam where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }
             else if(who.equals("acmicpc"))
            {
                query = "delete from acmicpc where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }
             else if(who.equals("projecteuler"))
            {
                query = "delete from projecteuler where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }
             else if(who.equals("uva"))
            {
                query = "delete from uva where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }
             else if(who.equals("livearchive"))
            {
                query = "delete from livearchive where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }
             else if(who.equals("topcoder"))
            {
                query = "delete from topcoder where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }
             else if(who.equals("timus"))
            {
                query = "delete from timus where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");

             }
            else if(who.equals("own"))
            {
                query = "delete from own where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");

            }
            else if(who.equals("other"))
            {
                query = "delete from other where problemcode='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");

            }
            else if(who.equals("queries"))
            {
                query = "delete from askquestions where id='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");

            }
            else if(who.equals("feedback"))
            {
                query = "delete from feedback where id='"+username+"'";
                st.executeUpdate(query);
                response.sendRedirect("adminprofile.jsp");
            }

        }
        catch(Exception e){out.println("Error "+e);}

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
