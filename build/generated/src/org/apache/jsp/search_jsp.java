package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import connection.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import connection.Config;

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(3);
    _jspx_dependants.add("/header1.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("       \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("    <html>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("   \n");
      out.write("    <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("    <html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("    <title>CodeShare</title>\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/img/favicon.ico\"/>\n");
      out.write("    <link href=\"assets/css/bootstrap_1.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"assets/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                   <script src=\"assets/js/jquery-1.js\" type=\"text/javascript\"></script>\n");
      out.write("                <script src=\"assets/js/jquery_1.js\" type=\"text/javascript\"></script>\n");
      out.write("                    <script src=\"assets/js/application_1.js\" type=\"text/javascript\"></script>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("             .navbar-inner{\n");
      out.write("                             background:#000;\n");
      out.write("                             border-bottom:5px solid #007AF4;\n");
      out.write("                             height:70px;\n");
      out.write("\n");
      out.write("                             }\n");
      out.write("                            .navbar-inner .brand{color:#FFF}\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("\n");
      out.write("       \n");
      out.write("<table id=\"sortTableExample\" class=\" table zebra-striped\">\n");
      out.write("<thead>\n");
      out.write("<tr>\n");
      out.write("<th class=\"header\">#</th>\n");
      out.write("<th class=\"yellow header\">First Name</th>\n");
      out.write("<th class=\"blue header\">Last Name</th>\n");
      out.write("<th class=\"green header headerSortUp\">Language</th>\n");
      out.write("</tr>\n");
      out.write("</thead>\n");
      out.write("<tbody>\n");
      out.write("<tr>\n");
      out.write("<td>1</td>\n");
      out.write("<td>Your</td>\n");
      out.write("<td>One</td>\n");
      out.write("<td>English</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>2</td>\n");
      out.write("<td>Joe</td>\n");
      out.write("<td>Sixpack</td>\n");
      out.write("<td>English</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>3</td>\n");
      out.write("<td>Stu</td>\n");
      out.write("<td>Dent</td>\n");
      out.write("<td>Code</td>\n");
      out.write("</tr>\n");
      out.write("</tbody>\n");
      out.write("</table>\n");
      out.write("    ");

    String User =(String) session.getAttribute("username");
//    out.print(User);
    if(User != null)
               {
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

           String uname = (String)session.getAttribute("username");
            
      out.write("\n");
      out.write("<link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"assets/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<style type=\"text/css\">\n");
      out.write("         .navbar-inner{\n");
      out.write("\t\t\t background:#000;\n");
      out.write("\t\t\t border-bottom:5px solid #007AF4;\n");
      out.write("\t\t\t height:70px;\n");
      out.write("\n");
      out.write("\t\t\t }\n");
      out.write("\t\t\t.navbar-inner .brand{color:#FFF}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("<div class=\"navbar\">\n");
      out.write("<div class=\"navbar-inner\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"span5\">\n");
      out.write("<a href=\"index.jsp\" class=\"brand\"> <img src=\"./assets/img/logo.png\" alt=\"CodeShare\" width=\"100px\" height=\"70px\"/></a>\n");
      out.write("<br/>\n");
      out.write("<h1 class=\"brand\" style=\"font-weight:bold;\">CodeShare</h1>\n");
      out.write("        </div>\n");
      out.write("        <br/>\n");
      out.write("       <form action=\"logout\" method=\"post\" class=\"pull-right\">\n");
      out.write("<button class=\"btn btn-primary \" > logout </button>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("        <br/>\n");
      out.write("\n");
      out.write("        <div class=\"pull-right\" style=\"color:white;\">\n");
      out.write("            <b> Welcome</b>\n");
      out.write("            <a href=\"profile.jsp\" style=\"color:white;\">\n");
      out.write("            ");

             if(uname!=null)
           
            {
                   out.println("<b>"+uname+"</b>");
            }
           


      out.write("\n");
      out.write("</a>\n");
      out.write("\n");
      out.write("&nbsp;&nbsp;\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("        ");
  }
                else
                {
      out.write("\n");
      out.write("                 ");
      out.write("<html>\n");
      out.write("<link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"assets/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("         .navbar-inner{\n");
      out.write("\t\t\t background:#000;\n");
      out.write("\t\t\t border-bottom:5px solid #007AF4;\n");
      out.write("\t\t\t height:70px;\n");
      out.write("\n");
      out.write("\t\t\t }\n");
      out.write("\t\t\t.navbar-inner .brand{color:#FFF}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("<div class=\"navbar\">\n");
      out.write("<div class=\"navbar-inner\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"span5\">\n");
      out.write("<a href=\"index.jsp\" class=\"brand\"> <img src=\"./assets/img/logo.png\" alt=\"CodeShare\" width=\"100px\" height=\"70px\"/></a>\n");
      out.write("<br/>\n");
      out.write("<h1 class=\"brand\" style=\"font-weight:bold;\">CodeShare</h1>\n");
      out.write("        </div>\n");
      out.write("        <br/>\n");
      out.write("        <div class=\"pull-right\">\n");
      out.write("             <a class=\"btn btn-primary btn-block btn-lg \" href=\"./login.jsp\" style=\"color:white;font-weight: bold;text-decoration: none;\">Login</a>\n");
      out.write("  <a class=\"btn btn-primary btn-block btn-lg \" href=\"./register.jsp\" style=\"color:white;font-weight: bold;text-decoration: none;\">Register</a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("                 ");
 }
   
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");


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
           
      out.write("\n");
      out.write("           <table id=\"sorttable\" class='table'>\n");
      out.write("            <tr style=\"font-weight: bold;\">\n");
      out.write("                    <td>S No.</td>\n");
      out.write("                    <td>Problem Code</td>\n");
      out.write("                    <td>Problem Name</td>\n");
      out.write("                    <td>Category</td>\n");
      out.write("\n");
      out.write("           </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("           ");



                while(rs.next())
                {
                    i++;
                    
      out.write("\n");
      out.write("\n");
      out.write("                   <tr>\n");
      out.write("                    <td>\n");
      out.write("                     ");
      out.print(i);
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        ");
      out.print(rs.getString("problemcode"));
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                       <a href=\"previewproblem.jsp?id=");
      out.print(rs.getString("problemcode"));
      out.write("&res=");
      out.print(res);
      out.write("\"  > ");
      out.print(rs.getString("problemname"));
      out.write(" </a>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                       ");
      out.print(rs.getString("category"));
      out.write("\n");
      out.write("                    </td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    ");

                }
            }


            con.close();
                    
      out.write("\n");
      out.write("\n");
      out.write("           </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    \n");
      out.write("       </div></div>\n");
      out.write("\n");
      out.write("      ");
      out.write("<div class=\"footer\">       \n");
      out.write("<div class=\"navbar navbar-fixed-bottom\">\n");
      out.write("                      <div class=\"navbar-inner\" style=\"background:#000;\n");
      out.write("\t\t\t border-bottom:0px;\">\n");
      out.write("           <center style=\"color:white\"><a href=\"#myModal3\"  data-toggle=\"modal\" ><b>Contact Us</b></a> || <a href=\"#myModal\" data-toggle=\"modal\"><b>Feedback</b></a></center>\n");
      out.write("        <center style=\"color: white\">Copyright &copy; 2013 CodeShare, All rights reserved Disclaimer</center>\n");
      out.write("        <center>The website is at its BETA phase. Please help us to improve the website by giving your feedback.</center>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("       </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"myModal\" class=\"modal hide fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\" style=\"height: 800px; width: 700px\">\n");
      out.write("<div class=\"modal-header\">\n");
      out.write("<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">X</button>\n");
      out.write("<h3 id=\"myModalLabel\">Feedback form</h3>\n");
      out.write("</div>\n");
      out.write("<div class=\"modal-body\">\n");
      out.write(" <form action=\"feedback\" id=\"contact-form2\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("\n");
      out.write("                                                      <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"fname\">Name</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("\n");
      out.write("                                                        <input type=\"text\" class=\"input-large span5\" name=\"fname\"  required id=\"fname\" placeholder=\"Name\" onkeyup=\"loadXMLDoc()\"/>\n");
      out.write("                                                              <span id=\"err\"> </span>\n");
      out.write("\n");
      out.write("                                                      </div>\n");
      out.write("\t\t\t\t\t\t    </div>\n");
      out.write("                                                    <div class=\"control-group\">\n");
      out.write("                                                      <label class=\"control-label\" for=\"email\">Email Address</label>\n");
      out.write("                                                      <div class=\"controls\">\n");
      out.write("                                                       <input type=\"email\" class=\"input-large span5\" name=\"email\" required id=\"email\" placeholder=\"Email address\"/>\n");
      out.write("                                                       </div>\n");
      out.write("                                                    </div>\n");
      out.write("\t\t\t\t\t\t    <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"number\">Mobile No.</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("                                                <input type=\"text\" class=\"input-large span5\" name=\"number\" id=\"number\" required maxlength=\"10\" placeholder=\"Mobile number\"/>\n");
      out.write("\t\t\t\t\t           </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                     <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"comment\">Comment</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("                                                        <textarea required=\"true\" class=\"form-control span5\" name=\"comment\" id=\"comment\" rows=\"8\" placeholder=\"Put youe Comment......\" required=\"true\">\n");
      out.write("                                                        </textarea>\n");
      out.write("                                                        <span id=\"err\"> </span>\n");
      out.write("                                                        </div>\n");
      out.write("\t\t\t\t\t\t    </div>\n");
      out.write("           <div class=\"control-group\">\n");
      out.write("                                                      <label class=\"control-label\"></label>\n");
      out.write("                                                      <div class=\"controls\">\n");
      out.write("                                                      <button type=\"submit\" class=\"btn btn-success btn-large\" data-loading-text=\"Loading...\">Send</button>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                                </div>\n");
      out.write("      </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"myModal3\" class=\"modal hide fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-header\">\n");
      out.write("    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">X</button>\n");
      out.write("    <h3 id=\"myModalLabel\">Contact Us</h3>\n");
      out.write("    </div>\n");
      out.write("    <div align=\"center\" class=\"modal-body lead\" style='color:#808080 ;font-weight: bold;' >\n");
      out.write("   \n");
      out.write("        <p>\n");
      out.write("            Abdul Qadir Faridi </p>\n");
      out.write("        <p>\n");
      out.write("            Email : <a href=\"mailto:aqfaridi@gmail.com\">aqfaridi@gmail.com</a>  </p>\n");
      out.write("         <p>\n");
      out.write("            Mobile : +91 7566062327  </p>\n");
      out.write("         <br />\n");
      out.write("        <p>    Pankaj Chaudhary </p>\n");
      out.write("        <p>\n");
      out.write("            Email : <a href=\"mailto:pankaj9310@gmail.com\">pankaj9310@gmail.com</a> </p>\n");
      out.write("        <p>\n");
      out.write("            Mobile : +91 8989931101 </p>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("        </body>\n");
      out.write("    </html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
