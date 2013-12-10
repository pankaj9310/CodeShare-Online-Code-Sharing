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
public class addproblem extends HttpServlet {
   HttpSession session=null;
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
            out.println("<title>Servlet addproblem</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addproblem at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */

            String pcode = request.getParameter("pcode");
            String pname = request.getParameter("pname");
            String resource = request.getParameter("resource");
            String category = request.getParameter("category");
            String solution = request.getParameter("tarea");
            String author = (String)session.getAttribute("userid");
            String sol="";
            for(int i=0;i<solution.length()-1;i++)
            {
                if(solution.charAt(i) == '\'' )
                    continue;
                else
                    sol+= Character.toString(solution.charAt(i));
            }
            Config c = new Config();
            Connection con = c.getcon();
            Statement st = con.createStatement();

            String qry1 = "INSERT INTO "+resource+"(problemcode,problemname,category,problemdescription,author ) VALUES ( '"+pcode+"','"+pname+"','"+category+"','"+sol+"','"+author+"')";
            out.println(qry1);
            st.executeUpdate(qry1);
            con.close();
            response.sendRedirect("addproblem.jsp?Success=True");
        }catch(Exception e){}

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
