<?php
require 'core/init.php';

$user = new User();

if(Session::exists('home')) {
	echo '<p>', Session::flash('home'), '</p>';
}

if($user->isLoggedIn()) {
	?>
	
	<p>Hello <a href="profile.php?user=<?php echo escape($user->data()->username); ?>"><?php echo escape($user->data()->username); ?></a>!</p>
	
	<ul>
		<li><a href="logout.php">Log out</a></li>
		<li><a href="changepassword.php">Change password</a></li>
		<li><a href="update.php">Update details</a></li>
	</ul>

<!DOCTYPE html>
<html lang="en">

<head>

    

    <title> Home network solutions using SDN </title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

   

</head>

<body>



    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
   
                <a class="navbar-brand" href="index.html"><h4 style="color:green";> <i>Software Defined Networking</i> - <b>YOU ARE IN CONTROL !</b></h4></a>
            </div>
           
            <div class="navbar-default sidebar" role="navigation" colour>
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">

                        <li>
                            <a class="active" href="index.html"><i style="color:orange" class="fa fa-rss"></i> Network</a>
                        </li>
						
						                        <li>
                            <a class="active" href="manager.html"><i style="color:green" class="fa fa-money"></i> Manager</a>
                        </li>
						
						                        <li>
                            <a class="active" href="index.html"><i style="color:purple" class="fa fa-globe"></i> Devices</a>
                        </li>
						
						                        <li>
                            <a class="active" href="index.html"><i style="color:black" class="fa fa-rss-square"></i> Overview</a>
                        </li>
                        
                         <li>
                            <a class="active" href="manager.html"><i class="fa fa-comment"></i> Technical support</a>
                        </li>





                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><i class="fa fa-globe"></i>&nbsp;Network</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
          <div class="col-lg-12">
                    <div class="panel">

                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a style="color:red" href="#home" data-toggle="tab">Home</a>
                                </li>
                                </li>
                                <li><a style="color:green" href="#settings" data-toggle="tab">Settings</a>
                                </li>
								<li><a href="#advanced-settings" data-toggle="tab">Advanced Settings</a>
                                </li>
                                <li><a style="color:black" href="#data-usage" data-toggle="tab">Data Usage</a>

                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                                    <h4>Home Tab</h4>
									
									
									
									<div class="row">
									<div class="col-lg-4.5">
									<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-user"></i> <b>Users</b>

                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
						
						<div class="form-group">
                                            <label>Users</label>
                                            <select multiple="" class="form-control">
                                                <option>Moe's Mac</option>
                                                <option>Marcs  blackberry</option>
                                                <option>Abdul maliks Ipad</option>
                                                <option>Moe's Iphone 5</option>
                                                <option>Jacquie's phone</option>
                                            </select>
											<br />
											<button type="button" class="btn btn-primary">View Settings</button>
											<button type="button" class="btn btn-primary">Change Settings</button>
											<br />
											<br />
										    <button type="button" class="btn btn-primary">Remove user</button>
											
                                        </div>
							
                        </div>
                        <!-- /.panel-body -->
                    </div>
					</div>
					
					
					
					<div class="col-lg-10">
					<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-group"></i><b> Groups </b>

                        </div>
                        <!-- /.panel-heading -->
                        
                        <div class="panel-body">
						
					
										
										
                            <div class="row">
                            
                                                    <div class="col-lg-12">             <div class="form-group">
                                            <label>Groups</label>
                                            
                                            
                                        
                                        
                                            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Group 1 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Marc</a></li>
                <li><a href="#">Abdul malik</a></li>
                <li><a href="#">Moe</a></li>                        
              </ul>
            </li>
            
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Group 2 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Jacquie</a></li>
                <li><a href="#">Her son's minecraft</a></li>
                <li><a href="#">Abdul maliks son's ipad</a></li>                        
              </ul>
            </li>
											
											
																						<br />
											<button type="button" class="btn btn-primary">View Group Settings</button>
											<button type="button" class="btn btn-primary">Change Settings</button>
											
											
                                        </div></div>
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
					</div>
					</div>
					
							
										<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-group"></i> Home Network Rules

                        </div>
                        
                        <!-- /.panel-heading -->
                        <div class="panel-body">
						
					
										<div class="panel-body">
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">Capping</a>	<br />
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                                        <div class="panel-body">
                             <div class="row">
							 <div class="col-lg-4">             <div class="form-group">
                                            <label>Start Time</label>
                                            <select class="form-control">
                                                <option>12 pm</option>
                                                <option>1 pm</option>
                                                <option>2 pm</option>
                                                <option>3 pm</option>
                                                <option>4 pm</option>
                                            </select>
										
											
											
                                        </div></div>
                                        
                                        
                                        
                                        
										
																	 <div class="col-lg-4">             <div class="form-group">
                                            <label>End Time</label>
                                            <select class="form-control">
                                                <option>1 pm</option>
                                                <option>2 pm</option>
                                                <option>3 pm</option>
                                                <option>4 pm</option>
                                                <option>5 pm</option>
                                            </select>
										
											
											
                                        </div></div>
							 </div>
							 																						<br /><br /><br />
											<button type="button" class="btn btn-primary">View Settings</button>
											<button type="button" class="btn btn-primary">Apply</button>
							 </div>
                                    </div>
                                </div>
                                
                                
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                    
                                    
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">Bandwidth management</a>
                                        </h4>
                                  
                                        </div>
                                  
                                    
                                    <div id="collapseTwo" class="panel-collapse collapse" style="height: 0px;">
                                        <div class="panel-body">
                                          
										 Need a bandwidth slider here to control the amount of bandwidth to be allocated to each user or group
										  
										  
										  <input type="range" min="0" max="100" value="50" step="5" onchange="showValue(this.value)" />
											<span id="range">0 MB</span>
											<script type="text/javascript">
											function showValue(newValue)
												{
												document.getElementById("range").innerHTML=newValue;
												}
												</script>
										  																						<br />
										  																						<br />
										  																						<br />
											<button type="button" class="btn btn-primary">View Settings</button>
											<button type="button" class="btn btn-primary">Apply</button>
											</div>
                                    </div>
                                </div>
                                
                                
                                
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="">Firewall Settings</a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse in" style="">
                                        <div class="panel-body">
                                        
                                    <h2>Here are your firewalls options</h2>

									<dl>
  										<dt>Detection of suspicious packets</dt>
  											<dd> -This is the explanation of the settings</dd>
  												<dt>Block a specified website</dt>
  													<dd>- Explain here how to block a website</dd>
																				</dl>	<br />
										  																						<br />
											<button type="button" class="btn btn-primary">View Settings</button>
											<button type="button" class="btn btn-primary">Apply</button>
											
											</div>
											
											
											
								
                                    </div>
                                    
                                    
                                     
                                    
                                </div>
                            </div>
                        </div>
										
                            


                        <!-- /.panel-body -->
                    </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                  
					
					
					
					
                                </div>
                                
                                <div class="tab-pane fade" id="data-usage">
                                	<h3> Data usage tab</h3>
                                    <h4>Run a network simulator here such as Opnet</h4>
                                    <p>ADD ANY DATA HERE</p>
                                </div>
                                
                                <div class="tab-pane fade" id="advanced-settings">
                                    <h4>Advanced setting tab</h4>
                                      <p>ADD ANY DATA HERE</p>
                                </div>
                                
                                <div class="tab-pane fade" id="settings">
                                    <h4>Settings Tab</h4>
                                    
                        		<p>ADD all settings on this page</p>       
                        		                         
  								</div>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
            
            <!-- /.row -->
            <div class="row">


            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>
	<?php

	if($user->hasPermission('admin')) {
	?>
		<p>You're also an administrator!</p>
	<?php
	}

} else {
	echo 'You need to <a href="login.php">log in</a> or <a href="register.php">register</a>!';
}