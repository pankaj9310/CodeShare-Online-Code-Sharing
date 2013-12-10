/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package servlets;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connection.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author aqfaridi
 */
public class commentask extends HttpServlet {

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
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet comment</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet comment at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
            String user = (String)session.getAttribute("userid");
            String solution = request.getParameter("comment");
            String id = request.getParameter("id");


            String sol="";
            for(int i=0;i<solution.length()-1;i++)
            {
                if(solution.charAt(i) == '<' && Character.isLetter(solution.charAt(i+1)) )
                    sol += "< ";
                else if(solution.charAt(i) == '\\' && Character.isLetter(solution.charAt(i+1)) )
                    sol += "\\\\";
                else
                    sol+= Character.toString(solution.charAt(i));
            }

            Config c = new Config();
            Connection con = c.getcon();
            Statement st = con.createStatement();
            String qry = "INSERT INTO commentquestions(id,comment,username) VALUES('"+id+"','"+sol+"','"+user+"')";
            st.executeUpdate(qry);
            con.close();
            response.sendRedirect("previewquestion.jsp?id="+id);
        }
        catch(Exception e){}
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
