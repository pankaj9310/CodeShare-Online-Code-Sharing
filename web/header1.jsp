
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*,connection.Config" %>
<%
           String uname = (String)session.getAttribute("username");
            %>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
         .navbar-inner{
			 background:#000;
			 border-bottom:5px solid #007AF4;
			 height:70px;

			 }
			.navbar-inner .brand{color:#FFF}

</style>

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
       <form action="logout" method="post" class="pull-right">
<button class="btn btn-primary " > logout </button>
</form>

        <br/>

        <div class="pull-right" style="color:white;">
            <b> Welcome</b>
            <a href="profile.jsp" style="color:white;">
            <%
             if(uname!=null)
           
            {
                   out.println("<b>"+uname+"</b>");
            }
           

%>
</a>

&nbsp;&nbsp;
        </div>


    </div>

</div>
</div>
</div>