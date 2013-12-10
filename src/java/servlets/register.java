/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connection.*;
import java.security.MessageDigest;
import sun.misc.*;
import mail.*;

public class register extends HttpServlet {

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
        String name=request.getParameter("sname");
        String uname=request.getParameter("username");
        String pass=request.getParameter("passwd");
        String sem=request.getParameter("sem");
        String email=request.getParameter("email");
        String number=request.getParameter("number");
        int check=0;
        Connection con;
        Statement st;
        ResultSet rs;

try{
     int Flag=0;
         MessageDigest MD5=MessageDigest.getInstance("MD5");
        MD5.update(pass.getBytes(),0,pass.getBytes().length);
        byte[] hashvalue=MD5.digest();
        String passwd=new BASE64Encoder().encode(hashvalue);
        Config c = new Config();
        con = c.getcon();
        st = con.createStatement();
        String qry = "select count(*) as col from users where username ='"+uname+"'";
        rs = st.executeQuery(qry);
        String blank="";
out.println("hello");
            if(rs.next())
            {
                check = Integer.parseInt(rs.getString("col"));
            }
            if(check==0)
            {
                out.println("hi");
                AuthCode authCode=new AuthCode();
                String code=authCode.generateCode();
                st = con.createStatement();
		String query="insert into users values('"+name+"','"+uname+"','"+passwd+"','"+sem+"','"+email+"','"+number+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+blank+"','"+Flag+"','"+code+"')";
                out.println(query);
                st.executeUpdate(query);

                String msg="Your verification CODE is:"+code+" .<br/>To verify Click on this link http://www.codeshare.in/Verification.jsp?email="+email+"&authcode="+code+"";
                 System.out.print("msg is" +msg);
                 //mailing preocess
              out.print("msg is" +msg);
                 MailVerify mv=new MailVerify(email, msg);
                 mv.verify();
                 out.print("To Login verify yourself.");
                 con.close();
                 response.sendRedirect("index.jsp");
            }
            else
            {
                con.close();
                response.sendRedirect("register.jsp?exists=True");
            }
}catch(Exception e){}
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
