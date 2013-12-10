<%--
    Document   : index
    Created on : Oct 21, 2013, 6:16:47 PM
    Author     : ICT
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter,connection.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="shortcut icon" type="image/x-icon" href="../assets/favicon.ico"/>

		<script type="text/javascript" src="../assets/js/jquery.js"></script>
		<script type="text/javascript" src="../assets/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="../assets/js/bootstrap-button.js"></script>
		<script type="text/javascript" src="../assets/js/jquery.validate.min.js"></script>
             
    <link rel="stylesheet" href="../assets/css/qunit-1.11.0.css"/>
    <link rel="stylesheet" href="../assets/css/bootstrap-responsive.css"/>
    <link rel="stylesheet" href="../assets/css/bootstrap.css"/>
    <link href="../assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/bootstrap_1.css" rel="stylesheet" type="text/css" />
    <link href="../style.css" rel="stylesheet" type="text/css" />




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
                <script type="text/javascript" src="../assets/js/bootstrap.js"></script>
		<script type="text/javascript" src="../script1.js"></script>
                 <script src="../assets/js/jquery-1.js" type="text/javascript"></script>
                <script src="../assets/js/jquery_1.js" type="text/javascript"></script>
                    <script src="../assets/js/application_2.js" type="text/javascript"></script>

<div class="navbar">
<div class="navbar-inner">
    <div class="container">

<a href="#" class="brand"> <img src="../assets/img/logo.png" alt="CodeShare" width="100px" height="70px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">Admin Panel</h1>
<form action="logoutadmin" method="post" class="pull-right">
<button class="btn btn-primary" > logout </button>
</form>
<p class="pull-right" style="color:white;">
<br />
<%


            String uname = (String)session.getAttribute("user");
             if(uname==null)
            {
                response.sendRedirect("adminpanel.jsp");
            }
            else
            {
                   out.println("<b> Welcome , "+uname+"</b>");
            }


%>
&nbsp;&nbsp;

</p>

</div>
</div>

</div>

<div class="container well">
    <div class="row">

        <div class="span2">
            <ul class="nav nav-tabs nav-stacked nav-justified"  style='background-color:white;'>
                    <li class="active">
                    <a href="#" data-toggle="tab">Admin Home</a>
                    </li>
                    <li>
                    <a href="#user" data-toggle="tab">User Detail</a>
                    </li>
                    <li>
                    <a href="#spoj" data-toggle="tab">SPOJ</a>
                    </li>
                    <li>
                    <a href="#codechef" data-toggle="tab">CODECHEF</a>
                    </li>
                    <li>
                    <a href="#topcoder" data-toggle="tab">TOPCODER</a>
                    </li>
                    <li>
                    <a href="#codeforces" data-toggle="tab">CODEFORCES</a>
                    </li>
                    <li>
                    <a href="#uva" data-toggle="tab">UVA</a>
                    </li>
                    <li>
                    <a href="#livearchive" data-toggle="tab">LIVE ARCHIVE</a>
                    </li>
                    <li>
                    <a href="#timus" data-toggle="tab">TIMUS</a>
                    </li>
                    <li>
                    <a href="#projecteuler" data-toggle="tab">PROJECT EULER</a>
                    </li>
                    <li>
                    <a href="#codejam" data-toggle="tab">CODEJAM</a>
                    </li>
                    <li>
                    <a href="#acmicpc" data-toggle="tab">ACM-ICPC</a>
                    </li>
                 <li>
                    <a href="#own" data-toggle="tab">OWN</a>
                    </li>
                 <li>
                    <a href="#other" data-toggle="tab">OTHERS</a>
                    </li>
                 <li>
                    <a href="#queries" data-toggle="tab">QUERIES</a>
                    </li>
                 <li>
                    <a href="#feedback" data-toggle="tab">FEEDBACK</a>
                    </li>
                    <li>
                    <a href="#changepass" data-toggle="tab">Change Password</a>
                    </li>
            </ul>
        </div>
   <div id="maincontent" class="span10" >
            <div id="myTabContent" class="tab-content">
<div id="user" class="tab-pane

<c:if test='${not empty param["user"]}'>
active
</c:if>

     ">


 <c:if test='${not empty param["user"]}'>
 <p style="color:green;font-weight:bold;">Deletion is successful.</p>

</c:if>

   <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                try
                                {
                                    Config c = new Config();
                                    con = c.getcon();
                                    st=con.createStatement();

                                     String userid="";
                                     String q="select * from users";
                                      st=con.createStatement();
                                     rs=st.executeQuery(q);
%>

                    <h3 ><center>User Details.</center></h3>

   <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">Username</th>
            <th class="red header">Full Name</th>
            <th class="blue header">Email</th>
            <th class="green header headerSortUp">Mobile</th>
            <th class="red header">Delete User</th>
            </tr>
            </thead>
           <tbody>

     <%
             while(rs.next())
             {
             %>

             <tr><td>

                     <%
out.print(rs.getString("username"));
%>
                 </td>
                 <td>

                     <%
out.print(rs.getString("fullname"));
%>
                 </td>
                 <td>

                     <%
out.print(rs.getString("email"));
%>

 </td><td>

                     <%
out.print(rs.getString("mobile"));
%>


                 </td>

              <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("username"));%>&who=user">Delete</a>
              </td></tr>

             <% }
             %></tbody>
                </table>



                                <%
                                }
                                catch(Exception e){}
                  %>


                  </div>



<div id="spoj" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        String qry = "SELECT * FROM spoj";
        rs = st.executeQuery(qry);
        int i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>


     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=spoj"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
                     <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=spoj">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>

      <br/>
</div>

<div id="codechef" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM codechef";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=codechef"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=codechef">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
 <br/>
</div>



<div id="codeforces" class="tab-pane " style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM codeforces";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=codeforces"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=codeforces">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
  <br/>
</div>




<div id="topcoder" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM topcoder";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=topcoder"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=topcoder">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
  <br/>
</div>





<div id="projecteuler" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM projecteuler";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=projecteuler"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=projecteuler">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
  <br/>
</div>





 <div id="codejam" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM codejam";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=codejam"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=codejam">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
 <br/>
</div>


<div id="acmicpc" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM acmicpc";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=acmicpc"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=acmicpc">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
 <br/>
</div>


  <div id="uva" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM uva";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=uva"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=uva">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
 <br/>
</div>

<div id="timus" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM timus";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=timus"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=timus">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
<br/>
</div>


<div id="livearchive" class="tab-pane"  style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM livearchive";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
           <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=livearchive"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=livearchive">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
 <br/>
</div>








  <div id="own" class="tab-pane " style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM own";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
         <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=own"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=own">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
    <br/>
</div>

  <div id="other" class="tab-pane " style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM other";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
            <th class="header">S No.</th>
            <th class="red header">Problem Code</th>
            <th class="blue header">Problem Name</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
         <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("problemcode")%>
                    </td>
                    <td>
                       <a href="adminproblemview.jsp?id=<%=rs.getString("problemcode")%>&res=other"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("problemcode"));%>&who=other">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
    <br/>
</div>




  <div id="queries" class="tab-pane " style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM askquestions";
        rs = st.executeQuery(qry);
        i = 0;
     %>
      <table class="sortTableExample" class='table zebra-striped'>
           <thead>

            <tr>
            <th class="header">S No.</th>
            <th class="red header">Question Code</th>
            <th class="blue header">Question Title</th>
            <th class="green header headerSortUp">Category</th>
            <th class="red header">Delete</th>
            </tr>
            </thead>
         <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=i%>
                    </td>
                    <td>
                        <%=rs.getString("questioncode")%>
                    </td>
                     <td>
                       <a href="adminquestionview.jsp?id=<%=rs.getString("id")%>"  > <%=rs.getString("questiontitle")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("id"));%>&who=queries">Delete</a>
              </td>
                </tr>



<%
        }

%>
           </tbody>
        </table>
    <br/>
</div>




  <div id="feedback" class="tab-pane " style="padding:20px 10px;">

    <%

        st = con.createStatement();
        qry = "SELECT * FROM feedback";
        rs = st.executeQuery(qry);
        i = 0;
     %>
          <table class="sortTableExample" class='table zebra-striped'>
           <thead>
           <tr>
            <th class="header">S No.</th>
            <th class="red header">Name</th>
            <th class="blue header">Email</th>
            <th class="green header headerSortUp">Comment</th>
            <th class="red header">Delete</th>
            </tr>

            </thead>
         <tbody>
     <%
        while(rs.next())
        {
            i++;
            %>


                <tr>
                    <td>
                     <%=rs.getString("id")%>
                    </td>
                    <td>
                        <%=rs.getString("name")%>
                    </td>
                     <td>
                       <%=rs.getString("email")%>
                    </td>
                    <td>
                       <%=rs.getString("comment")%>
                    </td>
      <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("id"));%>&who=feedback">Delete</a>
              </td>
                </tr>



<%
        }
        con.close();
%>
           </tbody>
        </table>
    <br/>
</div>




 <div id="changepass" class="tab-pane

<c:if test='${not empty param["Success"]}'>
 active
</c:if>
 <c:if test='${not empty param["Failed"]}'>
 active
</c:if>



 ">
<form  action ='<%= response.encodeURL("adminpasschange") %>' id="contact-form4" class="form-horizontal" method="post">

						    <div class="control-group">
						      <label class="control-label" for="passwd">Current Password</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                        <input type="password" class="input-large" name="passwd" id="passwd" placeholder="Current Password" required="true" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                                              <label class="control-label" for="apasswd">New Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="apasswd" id="apasswd" required="true" placeholder="New Password"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                                                <div class="control-group">
                                                                              <label class="control-label" for="conpasswd">Re Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="conpasswd" id="conpassword" required="true" placeholder="New Password"/>
                                                                              </div>
                                                                            </div>
                                                    </div>

                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
<c:if test='${not empty param["Success"]}'>
 <p style="color:green;font-weight:bold;">Your Password is changed successfully.</p>
</c:if>

<c:if test='${not empty param["Failed"]}'>
 <p style="color:red;font-weight:bold;">Wrong current Password.</p>

</c:if>
                                                      <button type="submit" class="btn btn-success">Submit</button>
                                                                        </div>
                                                                                </div>


</form>

                </div>




<br/><br/><br/>


   </div>

                </div>
    </div></div>
<br/><br/><br/>
 <%@include file="../footer.jsp" %>
</body>
</html>