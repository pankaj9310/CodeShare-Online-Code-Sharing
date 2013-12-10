<%-- 
    Document   : forgetpasswd
    Created on : Jun 25, 2013, 7:14:56 PM
    Author     : ICT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,connection.Config"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">

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
          <div id="main">
        <form action="recoverpassw.jsp" method="post">
            <table align="center" style="margin-top: 100px">
                <tr><td class="span3" style="font-weight:bold;color:#808080;">Please Enter Your Email address</td></tr>
                <tr><td></td></tr>
                <tr>
                    <td><input type="email" name="email" placeholder="Email ID" class="span3" required="true"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit" class="btn-success"/></td>
                     </tr>
            </table>

        </form>
      </div>
        <%@include file="footer.jsp"%>
    </body>
</html>