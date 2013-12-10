<%-- 
    Document   : userchangepass
    Created on : Jun 29, 2013, 12:41:07 PM
    Author     : ICT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,connection.*,java.security.*,sun.misc.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


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
     <div class="navbar">
<div class="navbar-inner">
    <div class="container">
    <div class="row">
        <div class="span5">
<a href="index.jsp" class="brand"> <img src="./assets/img/logo.png" alt="CodeShare" width="100px" height="70px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">CodeShare</h1>
        </div>
        <br/>
        <div class="pull-right">
    <a class="btn btn-primary btn-block btn-lg " href="./login.jsp" style="color:white;font-weight: bold;text-decoration: none;">Login</a>

        </div>


    </div>

</div>
</div>
</div>


<%

          String email = request.getParameter("email");
          String fpass = request.getParameter("passwd");
          String authcode =   request.getParameter("authcode");

          MessageDigest MD5=MessageDigest.getInstance("MD5");
        try{
                MD5.update(fpass.getBytes(),0,fpass.getBytes().length);
                byte[] hashvalue=MD5.digest();
                String apass=new BASE64Encoder().encode(hashvalue);
        
         Config c = new Config();
         Connection con = c.getcon();
         String query="Update users set password = '"+apass+"' where email='"+email+"' and authcode='"+authcode+"'";
         Statement st=con.createStatement();
         st.executeUpdate(query);
           out.print("<center><p style='color:green;font-weight:bold;'>Your Password has been Reset Successfully. </p></center><br/>");
           out.print("<center><p style='color:green;font-weight:bold;'>Now Login and enjoy the services. </p></center>");
      }
         catch(Exception e){e.getStackTrace();}
%>

<%@include file="footer.jsp"%>
    </body>
</html>
