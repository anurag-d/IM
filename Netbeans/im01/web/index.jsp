<%-- 
    Document   : index
    Created on : Jan 7, 2018, 9:39:04 PM
    Author     : anurag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Informatica Monitoring Tool</title>
        
		<link rel="shortcut icon" href="img/logo/favicon1.png" />
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="css/weather-icons.min.css"/>

        <!--lobiadmin-with-plugins.css contains all LobiAdmin css plus lobiplugins all css files, plus third party plugins-->
        <link rel="stylesheet" href="css/lobiadmin-with-plugins.css"/>
        <!--Put your css here-->
        
        <!--This css file is for only demo usage-->
        <link rel="stylesheet" href="css/demo.css"/>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-header header">
            <a class="navbar-brand" href="#">
                <div class="navbar-brand-img"></div>
                <img src="img/logo/favicon.png" class="hidden-xs" alt=""  />
            </a>
            <!--Menu show/hide toggle button-->
            <ul class="nav navbar-nav pull-left show-hide-menu">
                <li>
                    <a href="#" class="border-radius-0 btn font-size-lg" data-action="show-hide-sidebar">
                        <i class="fa fa-bars"></i>
                    </a>
                </li>
            </ul>
            <form class="navbar-search pull-left">
                
                <!--<label for="search" class="sr-only">Search...</label>
                <input type="text" class="font-size-lg" name="search" id="search" placeholder="Search...">-->
                <a class="btn btn-search">
                    <span class="glyphicon glyphicon-search"></span>
                </a>
                <a class="btn btn-remove">
                    <span class="glyphicon glyphicon-remove"></span>
                </a>
            </form>
            <div class="navbar-items">
                <!--User avatar dropdown-->
                <ul class="nav navbar-nav navbar-right user-actions">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img class="user-avatar" src="img/users/avatar2.png" alt="..."/>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#profile"><span class="glyphicon glyphicon-user"></span> &nbsp;&nbsp;Profile</a></li>
                            <li class="divider"></li>
                            <li><a href="lock.html"><span class="glyphicon glyphicon-lock"></span> &nbsp;&nbsp;Lock screen</a></li>
                            <li><a href="login.html"><span class="glyphicon glyphicon-off"></span> &nbsp;&nbsp;Log out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="clearfix-xxs"></div>
            <div class="navbar-items-2">
                
               
                <ul class="nav navbar-nav navbar-actions">
                    <li class="visible-lg">
                        <a href="#" data-action="fullscreen">
                            <span class="glyphicon glyphicon-fullscreen"></span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </nav>
        <div class="menu">
            <div class="menu-heading">
                <div class="menu-header-buttons-wrapper clearfix">
                    <button type="button" class="btn btn-info btn-menu-header-collapse">
                        <i class="fa fa-cogs"></i>
                    </button>
                    <!--Put your favourite pages here-->
                    <div class="menu-header-buttons">
                        <a href="#profile" class="btn btn-info btn-outline" data-title="Profile">
                            <i class="fa fa-user"></i>
                        </a>
                        <a href="#invoice" class="btn btn-info btn-outline" data-title="Invoice">
                            <i class="fa fa-file-pdf-o"></i>
                        </a>
                        <a href="#lobimail" class="btn btn-info btn-outline" data-title="Inbox">
                            <i class="fa fa-envelope"></i>
                        </a>
                        <a href="#calendar" class="btn btn-info btn-outline" data-title="Calendar">
                            <i class="fa fa-calendar"></i>
                        </a>
                    </div>
                </div>
            </div>
            <nav>
                <ul>
                    <li>
                        <a href="#dashboard">
                            <i class="fa fa-home menu-item-icon"></i>
                            <span class="inner-text">Dashboard</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="#monitor">
                            <i class="fa fa-binoculars menu-item-icon"></i>
                            <span class="inner-text">Monitor</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="#">
                            <i class="fa fa-gears menu-item-icon"></i>
                            <span class="inner-text">Configuration</span>
                            <!--<span class="badge-wrapper"><span class="badge badge-xs badge-cyan">4</span></span>-->
                        </a>
                        <ul>
                            <li>
                                <a href="#usermanagment">
                                    <span class="inner-text">User Management</span>
                                </a>
                            </li>
                            <li>
                                <a href="#infaconfig">
                                    <span class="inner-text">Informatica Configuration</span>
                                </a>
                            </li>
                            <li>
                                <a href="#alertgroups">
                                    <span class="inner-text">Alert Groups</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="menu-collapse-line">
                <!--Menu collapse/expand icon is put and control from LobiAdmin.js file-->
                <div class="menu-toggle-btn" data-action="collapse-expand-sidebar"></div>
            </div>
        </div>
        <div id="main">
            <div id="ribbon" class="hidden-print">
                <a href="#dashboard" class="btn-ribbon" data-container="#main" data-toggle="tooltip" data-title="Show dashboard"><i class="fa fa-home"></i></a>
                <span class="vertical-devider">&nbsp;</span>
                <button class="btn-ribbon" data-container="#main" data-action="reload" data-toggle="tooltip" data-title="Reload content by ajax"><i class="fa fa-refresh"></i></button>
                <ol class="breadcrumb">
                </ol>
            </div>
            <div id="content">
                
            </div>
        </div>
        <!--Setting box
        <div class="setting-box hidden-print">
            <div class="btn-toggle">
                <span class="glyphicon glyphicon-cog"></span>
            </div>
            <form action class="lobi-form">
                <fieldset>
                    <header>Page Settings</header>
                    <div class="form-group">
                        <label class="checkbox-inline lobicheck lobicheck-rounded">
                            Header fixed
                            <input type="checkbox" class="fix-header" value="1"> 
                            <i></i> 
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="checkbox-inline lobicheck lobicheck-rounded">
                            Menu fixed
                            <input type="checkbox" class="fix-menu"> 
                            <i></i> 
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="checkbox-inline lobicheck lobicheck-rounded">
                            Ribbon fixed
                            <input type="checkbox" class="fix-ribbon"> 
                            <i></i> 
                        </label>
                    </div>
                    <div class="row row-skin-options">
                        <h4>Skins</h4>
                        <div class="col-xs-3">
                            <label class="radio">
                                <input type="radio" name="header-skin" value="0" checked>
                                <div>
                                    <div class="setting-header"></div>
                                    <div class="setting-menu"></div>
                                </div>
                                <i class="fa fa-check-square"></i>
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <label class="radio">
                                <input type="radio" name="header-skin" value="header-cyan">
                                <div>
                                    <div class="setting-header"></div>
                                    <div class="setting-menu"></div>
                                </div>
                                <i class="fa fa-check-square"></i>
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <label class="radio">
                                <input type="radio" name="header-skin" value="header-green">
                                <div>
                                    <div class="setting-header"></div>
                                    <div class="setting-menu"></div>
                                </div>
                                <i class="fa fa-check-square"></i>
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <label class="radio">
                                <input type="radio" name="header-skin" value="header-brown">
                                <div>
                                    <div class="setting-header"></div>
                                    <div class="setting-menu"></div>
                                </div>
                                <i class="fa fa-check-square"></i>
                            </label>
                        </div>
                    </div>
                    <div class="row row-bg-options">
                        <h4>Background</h4>
                        <div class="col-xs-3">
                            <label class="radio" style="background-color: #f2f2f2">
                                <input type="radio" name="body-bg" data-is-color="true" value="#f2f2f2" checked>
                                <i class="fa fa-check-square"></i>
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <label class="radio" style="background-color: #edf1f4">
                                <input type="radio" name="body-bg" data-is-color="true" value="#edf1f4">
                                <i class="fa fa-check-square"></i>
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <label class="radio" style="background-image: url('img/bg/bg1.png')">
                                <input type="radio" name="body-bg" value="img/bg/bg1.png">
                                <i class="fa fa-check-square"></i>
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <label class="radio" style="background-image: url('img/bg/bg4.png')">
                                <input type="radio" name="body-bg" value="img/bg/bg4.png">
                                <i class="fa fa-check-square"></i>
                            </label>
                        </div>
                    </div>
                    <button class="btn btn-primary btn-block btn-pretty" data-action="clear-storage"><i class="fa fa-refresh"></i> Clear local storage</button>
                </fieldset>
            </form>
        </div>-->

        <!--Loading indicator for ajax page loading-->
        <div class="spinner spinner-horizontal hide">
            <span class="spinner-text">Loading...</span>
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>

        <script type="text/javascript" src="js/lib/jquery.min.js"></script>
        <script type="text/javascript" src="js/lib/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/bootstrap/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/lobi-plugins/lobibox.min.js"></script>
        <script type="text/javascript" src="js/lobi-plugins/lobipanel.min.js"></script>
        <script type="text/javascript" src="js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
        
        <!--Make sure that config.js file is loaded before LobiAdmin.js-->
        <script type="text/javascript" src="js/config.js"></script>
        <script type="text/javascript" src="js/LobiAdmin.min.js"></script>
        <script type="text/javascript" src="js/app.js"></script>
        <script type="text/javascript" src="js/demo.js"></script>
    </body>
</html>

