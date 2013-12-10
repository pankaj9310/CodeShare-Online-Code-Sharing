package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class changepasswd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(2);
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("      <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("    <title>CodeShare</title>\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\"/>\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"assets/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("                    <script type=\"text/javascript\" src=\"assets/js/jquery.js\"></script>\n");
      out.write("                    <script type=\"text/javascript\" src=\"assets/js/jquery-1.7.1.min.js\"></script>\n");
      out.write("                    <script type=\"text/javascript\" src=\"assets/js/bootstrap-button.js\"></script>\n");
      out.write("                    <script type=\"text/javascript\" src=\"assets/js/jquery.validate.min.js\"></script>\n");
      out.write("                    <script type=\"text/javascript\" src=\"assets/js/bootstrap-tab.js\"></script>\n");
      out.write("                    <script type=\"text/javascript\" src=\"assets/js/bootstrap-carousel.js\"></script>\n");
      out.write("                    <script type=\"text/javascript\" src=\"assets/js/bootstrap-dropdown.js\"></script>\n");
      out.write("                    <script src=\"assets/js/bootstrap-collapse.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("                    <script src=\"assets/js/bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("               \n");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("              <script type=\"text/javascript\">\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                  $(document).ready(function(){\n");
      out.write("\t$('#contact').validate({\n");
      out.write("\t    rules: {\n");
      out.write("                    passwd:{\n");
      out.write("                    required:true,\n");
      out.write("                    minlength: 6\n");
      out.write("                    },\n");
      out.write("\n");
      out.write("                    conpasswd:{\n");
      out.write("                         required:true,\n");
      out.write("                        equalTo: \"#passwd\"\n");
      out.write("                        }\n");
      out.write("                },\n");
      out.write("                highlight: function(element) {\n");
      out.write("                        $(element).closest('.control-group').removeClass('success').addClass('error');\n");
      out.write("                },\n");
      out.write("                success: function(element) {\n");
      out.write("                        element\n");
      out.write("                        .text('OK!').addClass('valid')\n");
      out.write("                        .closest('.control-group').removeClass('error').addClass('success');\n");
      out.write("                }\n");
      out.write("                           });//validate function close\n");
      out.write("\n");
      out.write("                  });\n");
      out.write("                  \n");
      out.write("              </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
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
      out.write("\n");
      out.write("\n");
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
      out.write("\n");
      out.write("    <form action='userchangepass.jsp' id=\"contact\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("\n");
      out.write("                                                            <div class=\"control-group\">\n");
      out.write("                                                                              <label class=\"control-label\" for=\"passwd\">Password</label>\n");
      out.write("                                                                              <div class=\"controls\">\n");
      out.write("                                                                                  <div class=\"input-prepend\">\n");
      out.write("                                                        <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                                                                                <input type=\"password\" class=\"input-large\" name=\"passwd\" id=\"passwd\" placeholder=\"******\"/>\n");
      out.write("                                                                              </div>\n");
      out.write("                                                                            </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                     <div class=\"control-group\">\n");
      out.write("                                                                              <label class=\"control-label\" for=\"conpasswd\">Re-Password</label>\n");
      out.write("                                                                              <div class=\"controls\">\n");
      out.write("                                                                                  <div class=\"input-prepend\">\n");
      out.write("                                                        <span class=\"add-on\"><i class=\"icon-lock\"></i></span>\n");
      out.write("                                                                                <input type=\"password\" class=\"input-large\" name=\"conpasswd\" id=\"conpasswd\" placeholder=\"******\"/>\n");
      out.write("                                                                              </div>\n");
      out.write("                                                                            </div>\n");
      out.write("\n");
      out.write("                                                     </div>\n");
      out.write("                                                          <div class=\"control-group\">\n");
      out.write("                                                          <label class=\"control-label\"></label>\n");
      out.write("                                                          <div class=\"controls\">\n");
      out.write("\n");
      out.write("   <button type=\"submit\" class=\"btn btn-primary\" data-loading-text=\"Loading...\">Update</button>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                          </div>\n");
      out.write("                                                                                    </div>\n");
      out.write("    </form>\n");
      out.write("            ");
      out.write("<div class=\"footer\">       \n");
      out.write("<div class=\"navbar navbar-fixed-bottom\" style=\" margin-bottom: 0px\">\n");
      out.write("                      <div class=\"navbar-inner\" style=\"background:#000; border-bottom:0px;\">\n");
      out.write("           <center style=\"color:white\"><a href=\"#myModal3\"  data-toggle=\"modal\" ><b>Contact Us</b></a> || <a href=\"#myModal\" data-toggle=\"modal\"><b>Feedback</b></a></center>\n");
      out.write("        <center style=\"color: white\">Copyright &copy; 2013 CodeShare, All rights reserved Disclaimer</center>\n");
      out.write("        <center style=\"color: white\">The website is at its BETA phase. Please help us to improve the website by giving your feedback.</center>\n");
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
      out.write("    </body>\n");
      out.write("</html>\n");
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
