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
    <%@page import="connection.*,java.sql.*,java.util.ArrayList,java.util.List" %>

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="assets/css/qunit-1.11.0.css">
    <link rel="stylesheet" href="assets/css/bootstrap-responsive.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <script src="assets/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>CodeShare</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/favicon.ico"/>
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/bootstrap_1.css" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" />
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

        <body>         <script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
                    <script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
                    <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                    <script type="text/javascript" src="assets/js/bootstrap-carousel.js"></script>
                    <script type="text/javascript" src="assets/js/bootstrap-dropdown.js"></script>
                    <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>

                    <script src="assets/js/bootstrap.js" type="text/javascript"></script>
                    <script type="text/javascript" src="script1.js"></script>
                               <script src="assets/js/jquery-1.js" type="text/javascript"></script>
                <script src="assets/js/jquery_1.js" type="text/javascript"></script>
                    <script src="assets/js/application_1.js" type="text/javascript"></script>
   

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

            <div class="container">
                <div class="row">
                    
<%
        Config c = new Config();
        Connection con = c.getcon();
        String res = request.getParameter("res");
        int id = Integer.parseInt(request.getParameter("id"));
        int start = id;
        int end = start + 19;
        Statement st = con.createStatement();
        String qry = "SELECT * FROM "+res;
        ResultSet rs = st.executeQuery(qry);
        rs.last();
        int totalrows = rs.getRow();
        rs.beforeFirst();
        if(totalrows!=0)
        {
      
            out.println("<ul class='pagination'>");
            out.println("<li><a href='#'>&laquo;</a></li>");

      
        int pages = (int)Math.ceil(totalrows/20.0);
        for(int i=0;i<pages;i++)
            out.println("<li><a href='viewmore.jsp?id="+(i*20+1)+"&res="+res+"'>"+(i+1)+"</a></li>");
%>
  <li><a href="#">&raquo;</a></li>
</ul>
    <%

        int i = start;
     %>
           <table id="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            </tr>
            </thead>
           <tbody>
     <%
        rs.absolute(start);
        do
        {
           
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=<%=res%> "  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>



<%
        i++;
        }while(rs.next() && i<=end);
        }

        else
            out.println("<center><p style='color:#808080;font-weight:bold;'>No Result Found</p></center>");
%>
           </tbody>
        </table>


       


<br/><br/><br/><br/>
       </div></div>

      <%@include file="footer.jsp" %>

 

        </body>
    </html>
