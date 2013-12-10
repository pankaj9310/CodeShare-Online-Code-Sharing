<%--
    Document   : index
    Created on : Dec 9, 2013, 9:55:45 AM
    Author     : aqfaridi
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*,connection.Config" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CodeShare</title>
<link rel="shortcut icon" type="image/x-icon" href="assets/favicon.ico"/>

		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>

<style type="text/css">
         .navbar-inner{
			 background:#000;
			 border-bottom:5px solid #007AF4;
			 height:70px;

			 }
			.navbar-inner .brand{color:#FFF}

</style>
</head>


<body>		<script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-carousel.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-dropdown.js"></script>
                <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>

                <script src="assets/js/bootstrap.js" type="text/javascript"></script>
                <script type="text/javascript" src="script1.js"></script>
  <%
    String User =(String) session.getAttribute("username");
//    out.print(User);
    if(User != null)
               {%>

        <%@include file="header1.jsp" %>
        <%  }
                else
                {%>
                 <%@ include file="header.jsp" %>
                 <% }
   %>

<div class="container well">
    <div class="row">

        <div>

    <%
        String category = request.getParameter("category");
        Config c = new Config();
        Connection con = c.getcon();
        Statement st = con.createStatement();
        String qry = "SELECT * FROM askquestions WHERE category='"+category+"'";
        
        ResultSet rs = st.executeQuery(qry);
        
     %>
        <table class='table'>
            <tr style="font-weight: bold;">
                    <td>S No.</td>
                    <td>Question Code</td>
                    <td>Question Title</td>
            </tr>
     <%
        while(rs.next())
        {
            
            %>


                <tr>
                    <td>
                     <%=rs.getString("id")%>
                    </td>
                    <td>
                        <%=rs.getString("questioncode")%>
                    </td>
                    <td>
                       <a href="previewquestion.jsp?id=<%=rs.getString("id")%>"  > <%=rs.getString("questiontitle")%> </a>
                    </td>
                </tr>



<%
        }
        con.close();
%>
        </table>

</div>


    </div>
</div>


  <%@include file="footer.jsp" %>
</body>

</html>
