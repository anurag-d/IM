package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html> \r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\">\r\n");
      out.write("        <title>Informatica Monitoring Tool</title>\r\n");
      out.write("        \r\n");
      out.write("\t\t<link rel=\"shortcut icon\" href=\"img/logo/favicon1.png\" />\r\n");
      out.write("        \r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\"/>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/weather-icons.min.css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!--lobiadmin-with-plugins.css contains all LobiAdmin css plus lobiplugins all css files, plus third party plugins-->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/lobiadmin-with-plugins.css\"/>\r\n");
      out.write("        <!--Put your css here-->\r\n");
      out.write("        \r\n");
      out.write("        <!--This css file is for only demo usage-->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/demo.css\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <nav class=\"navbar navbar-default navbar-header header\">\r\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\">\r\n");
      out.write("                <div class=\"navbar-brand-img\"></div>\r\n");
      out.write("                <img src=\"img/logo/favicon.png\" class=\"hidden-xs\" alt=\"\"  />\r\n");
      out.write("            </a>\r\n");
      out.write("            <!--Menu show/hide toggle button-->\r\n");
      out.write("            <ul class=\"nav navbar-nav pull-left show-hide-menu\">\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\" class=\"border-radius-0 btn font-size-lg\" data-action=\"show-hide-sidebar\">\r\n");
      out.write("                        <i class=\"fa fa-bars\"></i>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <form class=\"navbar-search pull-left\">\r\n");
      out.write("                \r\n");
      out.write("                <!--<label for=\"search\" class=\"sr-only\">Search...</label>\r\n");
      out.write("                <input type=\"text\" class=\"font-size-lg\" name=\"search\" id=\"search\" placeholder=\"Search...\">-->\r\n");
      out.write("                <a class=\"btn btn-search\">\r\n");
      out.write("                    <span class=\"glyphicon glyphicon-search\"></span>\r\n");
      out.write("                </a>\r\n");
      out.write("                <a class=\"btn btn-remove\">\r\n");
      out.write("                    <span class=\"glyphicon glyphicon-remove\"></span>\r\n");
      out.write("                </a>\r\n");
      out.write("            </form>\r\n");
      out.write("            <div class=\"navbar-items\">\r\n");
      out.write("                <!--User avatar dropdown-->\r\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right user-actions\">\r\n");
      out.write("                    <li class=\"dropdown\">\r\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\r\n");
      out.write("                            <img class=\"user-avatar\" src=\"img/users/avatar2.png\" alt=\"...\"/>\r\n");
      out.write("                            <b class=\"caret\"></b>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <ul class=\"dropdown-menu\">\r\n");
      out.write("                            <li><a href=\"#profile\"><span class=\"glyphicon glyphicon-user\"></span> &nbsp;&nbsp;Profile</a></li>\r\n");
      out.write("                            <li class=\"divider\"></li>\r\n");
      out.write("                            <li><a href=\"lock.html\"><span class=\"glyphicon glyphicon-lock\"></span> &nbsp;&nbsp;Lock screen</a></li>\r\n");
      out.write("                            <li><a href=\"login.html\"><span class=\"glyphicon glyphicon-off\"></span> &nbsp;&nbsp;Log out</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"clearfix-xxs\"></div>\r\n");
      out.write("            <div class=\"navbar-items-2\">\r\n");
      out.write("                \r\n");
      out.write("               \r\n");
      out.write("                <ul class=\"nav navbar-nav navbar-actions\">\r\n");
      out.write("                    <li class=\"visible-lg\">\r\n");
      out.write("                        <a href=\"#\" data-action=\"fullscreen\">\r\n");
      out.write("                            <span class=\"glyphicon glyphicon-fullscreen\"></span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"clearfix\"></div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <div class=\"menu\">\r\n");
      out.write("            <div class=\"menu-heading\">\r\n");
      out.write("                <div class=\"menu-header-buttons-wrapper clearfix\">\r\n");
      out.write("                    <button type=\"button\" class=\"btn btn-info btn-menu-header-collapse\">\r\n");
      out.write("                        <i class=\"fa fa-cogs\"></i>\r\n");
      out.write("                    </button>\r\n");
      out.write("                    <!--Put your favourite pages here-->\r\n");
      out.write("                    <div class=\"menu-header-buttons\">\r\n");
      out.write("                        <a href=\"#profile\" class=\"btn btn-info btn-outline\" data-title=\"Profile\">\r\n");
      out.write("                            <i class=\"fa fa-user\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <a href=\"#invoice\" class=\"btn btn-info btn-outline\" data-title=\"Invoice\">\r\n");
      out.write("                            <i class=\"fa fa-file-pdf-o\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <a href=\"#lobimail\" class=\"btn btn-info btn-outline\" data-title=\"Inbox\">\r\n");
      out.write("                            <i class=\"fa fa-envelope\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <a href=\"#calendar\" class=\"btn btn-info btn-outline\" data-title=\"Calendar\">\r\n");
      out.write("                            <i class=\"fa fa-calendar\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <nav>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#dashboard\">\r\n");
      out.write("                            <i class=\"fa fa-home menu-item-icon\"></i>\r\n");
      out.write("                            <span class=\"inner-text\">Dashboard</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    \r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#monitor\">\r\n");
      out.write("                            <i class=\"fa fa-binoculars menu-item-icon\"></i>\r\n");
      out.write("                            <span class=\"inner-text\">Monitor</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    \r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <i class=\"fa fa-gears menu-item-icon\"></i>\r\n");
      out.write("                            <span class=\"inner-text\">Configuration</span>\r\n");
      out.write("                            <!--<span class=\"badge-wrapper\"><span class=\"badge badge-xs badge-cyan\">4</span></span>-->\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"#usermanagment\">\r\n");
      out.write("                                    <span class=\"inner-text\">User Management</span>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"#infaconfig\">\r\n");
      out.write("                                    <span class=\"inner-text\">Informatica Configuration</span>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"#alertgroups\">\r\n");
      out.write("                                    <span class=\"inner-text\">Alert Groups</span>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </nav>\r\n");
      out.write("            <div class=\"menu-collapse-line\">\r\n");
      out.write("                <!--Menu collapse/expand icon is put and control from LobiAdmin.js file-->\r\n");
      out.write("                <div class=\"menu-toggle-btn\" data-action=\"collapse-expand-sidebar\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"main\">\r\n");
      out.write("            <div id=\"ribbon\" class=\"hidden-print\">\r\n");
      out.write("                <a href=\"#dashboard\" class=\"btn-ribbon\" data-container=\"#main\" data-toggle=\"tooltip\" data-title=\"Show dashboard\"><i class=\"fa fa-home\"></i></a>\r\n");
      out.write("                <span class=\"vertical-devider\">&nbsp;</span>\r\n");
      out.write("                <button class=\"btn-ribbon\" data-container=\"#main\" data-action=\"reload\" data-toggle=\"tooltip\" data-title=\"Reload content by ajax\"><i class=\"fa fa-refresh\"></i></button>\r\n");
      out.write("                <ol class=\"breadcrumb\">\r\n");
      out.write("                </ol>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"content\">\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--Setting box\r\n");
      out.write("        <div class=\"setting-box hidden-print\">\r\n");
      out.write("            <div class=\"btn-toggle\">\r\n");
      out.write("                <span class=\"glyphicon glyphicon-cog\"></span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <form action class=\"lobi-form\">\r\n");
      out.write("                <fieldset>\r\n");
      out.write("                    <header>Page Settings</header>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <label class=\"checkbox-inline lobicheck lobicheck-rounded\">\r\n");
      out.write("                            Header fixed\r\n");
      out.write("                            <input type=\"checkbox\" class=\"fix-header\" value=\"1\"> \r\n");
      out.write("                            <i></i> \r\n");
      out.write("                        </label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <label class=\"checkbox-inline lobicheck lobicheck-rounded\">\r\n");
      out.write("                            Menu fixed\r\n");
      out.write("                            <input type=\"checkbox\" class=\"fix-menu\"> \r\n");
      out.write("                            <i></i> \r\n");
      out.write("                        </label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <label class=\"checkbox-inline lobicheck lobicheck-rounded\">\r\n");
      out.write("                            Ribbon fixed\r\n");
      out.write("                            <input type=\"checkbox\" class=\"fix-ribbon\"> \r\n");
      out.write("                            <i></i> \r\n");
      out.write("                        </label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row row-skin-options\">\r\n");
      out.write("                        <h4>Skins</h4>\r\n");
      out.write("                        <div class=\"col-xs-3\">\r\n");
      out.write("                            <label class=\"radio\">\r\n");
      out.write("                                <input type=\"radio\" name=\"header-skin\" value=\"0\" checked>\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <div class=\"setting-header\"></div>\r\n");
      out.write("                                    <div class=\"setting-menu\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <i class=\"fa fa-check-square\"></i>\r\n");
      out.write("                            </label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-xs-3\">\r\n");
      out.write("                            <label class=\"radio\">\r\n");
      out.write("                                <input type=\"radio\" name=\"header-skin\" value=\"header-cyan\">\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <div class=\"setting-header\"></div>\r\n");
      out.write("                                    <div class=\"setting-menu\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <i class=\"fa fa-check-square\"></i>\r\n");
      out.write("                            </label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-xs-3\">\r\n");
      out.write("                            <label class=\"radio\">\r\n");
      out.write("                                <input type=\"radio\" name=\"header-skin\" value=\"header-green\">\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <div class=\"setting-header\"></div>\r\n");
      out.write("                                    <div class=\"setting-menu\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <i class=\"fa fa-check-square\"></i>\r\n");
      out.write("                            </label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-xs-3\">\r\n");
      out.write("                            <label class=\"radio\">\r\n");
      out.write("                                <input type=\"radio\" name=\"header-skin\" value=\"header-brown\">\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <div class=\"setting-header\"></div>\r\n");
      out.write("                                    <div class=\"setting-menu\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <i class=\"fa fa-check-square\"></i>\r\n");
      out.write("                            </label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row row-bg-options\">\r\n");
      out.write("                        <h4>Background</h4>\r\n");
      out.write("                        <div class=\"col-xs-3\">\r\n");
      out.write("                            <label class=\"radio\" style=\"background-color: #f2f2f2\">\r\n");
      out.write("                                <input type=\"radio\" name=\"body-bg\" data-is-color=\"true\" value=\"#f2f2f2\" checked>\r\n");
      out.write("                                <i class=\"fa fa-check-square\"></i>\r\n");
      out.write("                            </label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-xs-3\">\r\n");
      out.write("                            <label class=\"radio\" style=\"background-color: #edf1f4\">\r\n");
      out.write("                                <input type=\"radio\" name=\"body-bg\" data-is-color=\"true\" value=\"#edf1f4\">\r\n");
      out.write("                                <i class=\"fa fa-check-square\"></i>\r\n");
      out.write("                            </label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-xs-3\">\r\n");
      out.write("                            <label class=\"radio\" style=\"background-image: url('img/bg/bg1.png')\">\r\n");
      out.write("                                <input type=\"radio\" name=\"body-bg\" value=\"img/bg/bg1.png\">\r\n");
      out.write("                                <i class=\"fa fa-check-square\"></i>\r\n");
      out.write("                            </label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-xs-3\">\r\n");
      out.write("                            <label class=\"radio\" style=\"background-image: url('img/bg/bg4.png')\">\r\n");
      out.write("                                <input type=\"radio\" name=\"body-bg\" value=\"img/bg/bg4.png\">\r\n");
      out.write("                                <i class=\"fa fa-check-square\"></i>\r\n");
      out.write("                            </label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <button class=\"btn btn-primary btn-block btn-pretty\" data-action=\"clear-storage\"><i class=\"fa fa-refresh\"></i> Clear local storage</button>\r\n");
      out.write("                </fieldset>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>-->\r\n");
      out.write("\r\n");
      out.write("        <!--Loading indicator for ajax page loading-->\r\n");
      out.write("        <div class=\"spinner spinner-horizontal hide\">\r\n");
      out.write("            <span class=\"spinner-text\">Loading...</span>\r\n");
      out.write("            <div class=\"bounce1\"></div>\r\n");
      out.write("            <div class=\"bounce2\"></div>\r\n");
      out.write("            <div class=\"bounce3\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/lib/jquery.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/lib/jquery-ui.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap/bootstrap.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/lobi-plugins/lobibox.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/lobi-plugins/lobipanel.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js\"></script>\r\n");
      out.write("        \r\n");
      out.write("        <!--Make sure that config.js file is loaded before LobiAdmin.js-->\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/config.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/LobiAdmin.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/app.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/demo.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
