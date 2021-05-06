	<?php
 if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

if ( $_SESSION[ "sidx" ] == "" || $_SESSION[ "sidx" ] == NULL ) {
	header( 'Location:studentlogin' );
}

$userid = $_SESSION[ "sidx" ];
$userfname = $_SESSION[ "fname" ];
$sEno = $_SESSION[ "seno" ];
$userlname = $_SESSION[ "lname" ];
?>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title >E-CLASSROOM</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/ 5shiv/3.7.0/ 5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<link rel="shortcut icon" href="images/logo.png" >
	<link rel="icon" href="images/logo.png" >
	
	
</head>

<body>
<header>
<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand " style='color:white' href="index">E-CLASSROOM</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="welcomestudent">Home</a>
                    </li>
                   
				   <li class="nav-item active">
                        <a href="mydetailsstudent.php?myds=<?php echo $userid;  ?>"><?php echo "<span style='color:white'>".$userfname." ".$userlname."</span>";?></a>
                    </li>
					
					<li>
                        <a href="takeassessment.php?seno=<?php echo $sEno; ?>">Take Assessment</a>
                    </li>
					
					<li>
                        <a href="viewresult.php?seno=<?php echo $sEno;  ?>">Result</a>
                    </li>
					
					<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Queries <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="viewquery.php?eid=<?php echo $userid;  ?>">My Queries</a>
                            </li>
                            <li>
                                <a href="askquery.php?eid=<?php echo $userid;  ?>">Ask Query</a>
                            </li>
                            
                        </ul>
                    </li>
					
					<li>
                        <a href="viewvideos.php?eid=<?php echo $userid;  ?>">Videos</a>
                    </li>


					 <li>
                       <a href="logoutstudent" style="font-size: x-large;"><span class="glyphicon glyphicon-off title=" title="logout"></span> </a>
                     </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
</header>