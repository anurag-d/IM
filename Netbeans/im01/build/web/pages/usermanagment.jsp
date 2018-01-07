<%-- 
    Document   : usermanagment
    Created on : Jan 7, 2018, 9:59:28 PM
    Author     : anurag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <div id="basic_elements">
    <div class="row">
        <div class="col-xs-12 col-lg-12">
            <div class="panel panel-light">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4>User Managment</h4>
                    </div>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="inputfname" class="col-sm-2 control-label">First Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputfname" placeholder="First Name" maxlength="10">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="inputlname" class="col-sm-2 control-label">Last Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputlname" placeholder="Last Name" maxlength="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="inputusername" class="col-sm-2 control-label">Username</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputusername" placeholder="Username" maxlength="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="inputemail" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="inputemail" placeholder="Email example john@doe.com" maxlength="">
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <label for="inputpassword" class="col-sm-2 control-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputpassword" placeholder="Password should be of 8 characters" minlength="8" maxlength="8">
                            </div>
                        </div>
                      
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-info btn-pretty">Submit</button>   
                                <button type="submit" class="btn btn-default">Cancel</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('.panel').lobiPanel({
            editTitle: false,
            reload: false,
            sortable: true
        });
    </script>
</div>

<!--Author      : @arboshiki-->
<div id="basic-tables">
    <div class="row">
        
       
    </div>
    <h4>Users</h4>
    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                    <th>Status</th>
                    <th>Last update profile</th>
                    <th>Unread messages</th>
                    <th>Active</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td><span class="label label-success">Online</span></td>
                    <td>08/25/2014</td>
                    <td><span class="badge badge-default">14</span></td>
                    <td>
                        <label class="checkbox lobicheck lobicheck-info">
                            <input type="checkbox" checked> 
                            <i></i> &nbsp;
                        </label>
                    </td>
                    <td>
                        <div class="btn-group btn-group-xs dropup">
                            <button type="button" class="btn btn-info btn-pretty dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-cog"></i> <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                <li><a href="#"><i class="fa fa-remove text-danger"></i> Delete</a></li>
                                <li><a href="#"><i class="fa fa-check text-success"></i> Activate</a></li>
                                <li><a href="#"><i class="fa fa-envelope text-primary"></i> Send message</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td><span class="label label-danger">Offline</span></td>
                    <td>01/20/2015</td>
                    <td><span class="badge badge-warning">3</span></td>
                    <td>
                        <label class="checkbox lobicheck lobicheck-info">
                            <input type="checkbox" checked> 
                            <i></i> &nbsp;
                        </label>
                    </td>
                    <td>
                        <div class="btn-group btn-group-xs dropup">
                            <button type="button" class="btn btn-info btn-pretty dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-cog"></i> <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                <li><a href="#"><i class="fa fa-remove text-danger"></i> Delete</a></li>
                                <li><a href="#"><i class="fa fa-check text-success"></i> Activate</a></li>
                                <li><a href="#"><i class="fa fa-envelope text-primary"></i> Send message</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td><span class="label label-warning">Busy</span></td>
                    <td>04/23/2014</td>
                    <td><span class="badge badge-success">0</span></td>
                    <td>
                        <label class="checkbox lobicheck lobicheck-info">
                            <input type="checkbox"> 
                            <i></i> &nbsp;
                        </label>
                    </td>
                    <td>
                        <div class="btn-group btn-group-xs dropup">
                            <button type="button" class="btn btn-info btn-pretty dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-cog"></i> <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                <li><a href="#"><i class="fa fa-remove text-danger"></i> Delete</a></li>
                                <li><a href="#"><i class="fa fa-check text-success"></i> Activate</a></li>
                                <li><a href="#"><i class="fa fa-envelope text-primary"></i> Send message</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
   
</div>