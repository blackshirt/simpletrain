<!doctype html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/static/css/bootstrap.min.css" rel="stylesheet">
	<link href="/static/css/custom-old.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top navbar-custom" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#menu-toggle" id="menu-toggle"><span class="glyphicon glyphicon-list" aria-hidden="true"></span></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Log Out</a></li>
            </ul>
            <form class="navbar-form navbar-right" action="#" method="GET">
           		<div class="input-group">
					<input type="text" class="form-control" placeholder="Search..." id="query" name="search" value="">
                  	<div class="input-group-btn">
                    	<button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-search"></span></button>
                  	</div>
				</div>
            </form>
        </div>
    </div>
</nav>

<div id="wrapper" class="toggled">
    <div class="container-fluid">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
              	<li class="sidebar-brand">
                    <br>
                </li>
                <li class="sidebar-brand">
                    <a href="#" class="navbar-brand">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Profile
                    </a>
                </li>
                <li>
                    <a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a>
                </li>
                 <li>
                    <a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Search</a>
                </li>
                <li>
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span><font color="#337AB7"> STATISTICS</font>
                </li>
                <li>
                    <a href="#"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Reports</a>
                </li>
                <li>
                    <a href="#"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> Statistic</a>
                </li>
                <li>
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span><font color="#337AB7"> ADMINISTRATION</font>
                </li>
                <li>
                    <a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Users</a>
                </li>
              	<li>
                    <a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Messages</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                      <br>
                      <h1>Your Title</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
						<!-- content -->
                            {{!base}}
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
</div>
<!-- /#wrapper -->







<script src="/static/js/jquery-3.1.0.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function() {
    $('nav, .nav-controller').on('click', function(event) {
        $('nav').toggleClass('focus');
    });
    $('nav, .nav-controller').on('mouseover', function(event) {
        $('nav').addClass('focus');
    }).on('mouseout', function(event) {
        $('nav').removeClass('focus');
    });
     $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
})
</script>
</body>
</html>