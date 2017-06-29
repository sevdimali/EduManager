<?php 
/*Header*/
include("configM.php");
include("functions.php");
?>
<!DOCTYPE html>
<html>
  <head>
    <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
    <title>EduManager v1.0</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="<?php echo $site_url; ?>css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo $site_url; ?>css/style.css" rel="stylesheet">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<?php echo $site_url; ?>main.php?id_muellim=<?php echo $_GET["id_muellim"];?>">
       EduManager v1.0
      </a>
    </div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
	  <li><a href="<?php echo $site_url; ?>yenifenn.php?id_muellim=<?php echo $_GET["id_muellim"];?>">Yeni Fənn Qeydiyyatı</a></li>
      <li><a href="<?php echo $site_url; ?>yeniqrup.php?id_muellim=<?php echo $_GET["id_muellim"];?>">Yeni Qrup Qeydiyyatı</a></li>
	  </ul>
	  <ul class="nav navbar-nav navbar-right">
	  <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
		  <?php
						$tap_mesaj = mysql_query("select * from mesajlar where id_qeb=1 and tip_qeb=1 and status=0;");
						while($goster_mesaj = mysql_fetch_array($tap_mesaj)){
						echo '<li> <a href="mesaj.php"> <div><strong>'.goster_telebe_id_den($goster_mesaj["id_gond"],1).'</strong>
                               </div> <div>'.$goster_mesaj["mesaj"].'...</div>
                            </a>
                        </li>
                        <li class="divider"></li>';
						}
						?>
            <li><a href="#">Bütün mesajları oxu</a></li>
          </ul>
        </li>
			  <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> <span class="glyphicon glyphicon-user" aria-hidden="true"></span> <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
		              <li><a href="#">Profil</a></li>
					  <li><a href="#">Tənzimləmələr</a></li>
					  <li><a href="#">Çıxış</a></li>
          </ul>
        </li>
	  </ul>
  </div>
  
</nav>
<div class="container">
