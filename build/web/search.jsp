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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>CodeShare</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/favicon.ico"/>
    <link href="assets/css/bootstrap_1.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" />
                    
                    
                    
                   <script src="assets/js/jquery-1.js" type="text/javascript"></script>
                <script src="assets/js/jquery_1.js" type="text/javascript"></script>
                    <script src="assets/js/application_1.js" type="text/javascript"></script>
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

            List<String> x = new ArrayList<String>();
            String cat="",pcode="",pname="";
            String[] pat;
            int f=0;
            String search = request.getParameter("searchbox");
            String res = request.getParameter("resources");
            String[] str = search.split("\\s+");
            for(int j=0;j<str.length;j++)
            {
                str[j] = str[j].toLowerCase();
            }
            Config c = new Config();
            Connection con = c.getcon();
            Statement st = con.createStatement();
            String qry = "SELECT problemcode,problemname,category FROM "+res;
            ResultSet rs = st.executeQuery(qry);
            while(rs.next())
            {
                pcode = rs.getString("problemcode").toLowerCase();
                cat = rs.getString("category").toLowerCase();
                pname = rs.getString("problemname").toLowerCase();
                pat = pname.split("\\s+");
                f=0;
                for(int j=0;j<str.length;j++)
                {
                    //out.println(str[j] + " "+pcode +" "+cat);
                   
                    if(str[j].equals(pcode) || str[j].equals(cat))
                    {
                         //out.println(str[j] + " "+pcode +" "+cat);
                         x.add(pcode);
                         f=1;
                         break;
                    }
                }
                if(f==0)
                {
                    for(int i=0;i<pat.length;i++)
                    {
                        for(int j=0;j<str.length;j++)
                        {
                            if(str[j].equals(pat[i]))
                            {
                                x.add(pcode);
                                f=1;
                                break;
                            }
                        }
                    }
                }

            }
            if(x.size()==0)
            {
                //no result found;
                out.println("<center><p style='font-weight:bold;color:#808080;'>No Results Found</p></center>");
            }
            else
            {
                String substr="";
                String sql="SELECT * FROM "+res+" WHERE problemcode='"+x.get(0)+"'";
                for (int i = 1; i < x.size(); i++)
                {
                    substr = (x.get(i));
                    substr = substr.toUpperCase();
                    sql += " OR problemcode=\'"+substr+"\'";
                }
                //out.println(sql);
                rs = st.executeQuery(sql);
                int i=0;
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
                       <a href="previewproblem.jsp?id=<%=rs.getString("problemcode")%>&res=<%=res%>"  > <%=rs.getString("problemname")%> </a>
                    </td>
                    <td>
                       <%=rs.getString("category")%>
                    </td>

                </tr>




                    <%
                }
            }


            con.close();
                    %>
           </tbody>
           </table>



                    
       </div></div>

      <%@include file="footer.jsp" %>
        </body>
    </html>
