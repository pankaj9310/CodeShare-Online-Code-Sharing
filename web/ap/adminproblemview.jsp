<%--
    Document   : register
    Created on : Dec 9, 2013, 12:49:49 PM
    Author     : aqfaridi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*,connection.Config" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CodeShare</title>
<link rel="shortcut icon" type="image/x-icon" href="../assets/favicon.ico"/>
    <link rel="stylesheet" href="../assets/css/bootstrap-responsive.css"/>
    <link rel="stylesheet" href="../assets/css/bootstrap.css"/>
    <link href="../assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/bootstrap_1.css" rel="stylesheet" type="text/css" />
    <link href="../style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="../assets/js/jquery.js"></script>
		<script type="text/javascript" src="../assets/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="../assets/js/bootstrap-button.js"></script>
		<script type="text/javascript" src="../assets/js/jquery.validate.min.js"></script>
               
<style type="text/css">
         .navbar-inner{
			 background:#000;
			 border-bottom:5px solid #007AF4;
			 height:70px;

			 }
			.navbar-inner .brand{color:#FFF}

</style>
</head>

    <body>
  <script type="text/javascript" src="../assets/js/bootstrap-tab.js"></script>
                <script type="text/javascript" src="../assets/js/bootstrap-carousel.js"></script>
                <script type="text/javascript" src="../assets/js/bootstrap-dropdown.js"></script>
                <script src="../assets/js/bootstrap-collapse.js" type="text/javascript"></script>

                <script src="../assets/js/bootstrap.js" type="text/javascript"></script>
                <script type="text/javascript" src="../script1.js"></script>
<div class="navbar">
<div class="navbar-inner">
    <div class="container">

<a href="adminprofile.jsp" class="brand"> <img src="../assets/img/logo.png" alt="CodeShare" width="100px" height="70px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">Admin Panel</h1>
<form action="logoutadmin" method="post" class="pull-right">
<button class="btn btn-primary" > logout </button>
</form>
<p class="pull-right" style="color:white;">
<br />
<%


            String User = (String)session.getAttribute("user");
             if(User==null)
            {
                response.sendRedirect("adminpanel.jsp");
            }
            else
            {
                   out.println("<b> Welcome , "+User+"</b>");
            }


%>
&nbsp;&nbsp;

</p>

</div>
</div>

</div>
        <div class="container">
            <div class="row">

                <%

                    String pcode = request.getParameter("id");
                    String res = request.getParameter("res");
                    Config c = new Config();
                    Connection con = c.getcon();
                    Statement st = con.createStatement();
                    String qry = "SELECT * FROM "+res+" WHERE problemcode='"+pcode+"'";
                    ResultSet rs = st.executeQuery(qry);
                    if(rs.next())
                    {
                        out.println("<center><h2>");
                        out.println("Problem Name: "+rs.getString("problemname")+"<br/>");
                        out.println("Problem Code: " + rs.getString("problemcode"));
                        out.println("</h2></center><br/>");
                        out.println(rs.getString("problemdescription")+"<br/>");

%>
            </div>
            <%


                        out.println("<p style = 'color:#808080;font-weight:bold;' > Uploaded By : <a>"+rs.getString("author")+"</a> "+rs.getString("time")+" </p><br/>");
                    }
                    %>
           <a class="btn btn-info btn-block " href="./adminsolutionview.jsp?id=<%=pcode%>&res=<%=res%>" style="color:white;font-weight: bold;text-decoration: none;">View Source</a>
           <br/><br/>

           <br/><br/>
           <%
                qry = "SELECT * FROM commentproblem WHERE problemcode='"+pcode+"' ORDER BY Sno DESC";

                rs = st.executeQuery(qry);
                while(rs.next())
                {
           %>
           <p>
               <img src="../assets/img/profile.png" height="50px" width="50px" alt="profile" />
               <b><a href="#"><%=rs.getString("username")%></a></b>
                 <b style="color:#808080;"><%=rs.getString("time")%></b>
                 &nbsp;&nbsp;&nbsp;<i class="icon-remove"></i><a href="deletecomment?id=<%=pcode%>&res=<%=res%>&sno=<% out.print(rs.getString("Sno"));%>&which=problem">Delete</a>
                <pre><%=rs.getString("comment")%></pre>
           </p>
           <br/>
           <%}
                if(User!=null)
               {
                %>
           <h2 style="color:#3399CC;">Leave a Comment</h2>
           <form action="commentadmin?id=<%=pcode%>&res=<%=res%>" method="post">
               <textarea  name="comment" class="span9" onkeyup="this.rows = (this.value.split('\n').length||1);" autocomplete="off" role="textbox" placeholder="Write your comment here ... " title="sourcecodes" name="codes" required></textarea>
               <br/><button type="submit" class="btn btn-success btn-large">Post Comment</button>
           </form>
               <%}

               con.close();
 %>
     <br/><br/>
        </div>
           <br/><br/>
  <%@include file="../footer.jsp" %>
    </body>
</html>
