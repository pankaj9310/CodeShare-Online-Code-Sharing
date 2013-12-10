<%-- 
    Document   : recoverpassw
    Created on : Jun 28, 2013, 11:52:48 AM
    Author     : ICT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="mail.AuthCode,java.sql.*,connection.*"%>
<%@page import="mail.MailVerify,javax.mail.*"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="com.sun.mail.smtp.DigestMD5"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <style type="text/css">


        </style>

          <link href="style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%@include file="header.jsp" %>
<%

       String email=request.getParameter("email");
       Config c = new Config();
       Connection con = c.getcon();
       String qry="Select * from users where email='"+email+"'";
       Statement st1=con.createStatement();
       ResultSet rs=st1.executeQuery(qry);
       if(rs.next())
       {
           String username = rs.getString("username");
           String authcode = rs.getString("authcode");
           String msg="Login Deatails:  Username is "+username+"         Now Click on following link to Login and Reset Your Password... http://www.codeshare.in/changepasswd.jsp?authcode="+authcode+"&email="+email;
           //out.println(msg);
           MailVerify mail=new MailVerify(email, msg);
           mail.verify();
        }
        out.print("<center><p style='color:green;font-weight:bold;'>Recovery Mail sent successfully.</p></center>");
                out.print("<center><p style='color:green;font-weight:bold;'>Check Your Email Account.</p></center>");
%>

<%@include file="footer.jsp"%>
    </body>
</html>