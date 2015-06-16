<?php 
include("../functions.php");
session_start();
if (isset($_SESSION['login_type'])){
	if ($_SESSION['login_type'] == 't'){
	$id = $_SESSION['id'];
	}
else {
echo 'Tələbə olaraq giriş edilməlidir.';
exit;
}
?>	
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Onlayn Xidmətlər</title>

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   <div class="container">
		<div class="row" style="margin-top: -90px;">
			<div class="page-header">
			<h1 class="text-center">Onlayn Xidmətlər</h1>
			</div>
			<?php 
			$telebe = goster_telebe_id_den($id,3);
			echo '<span class="telebe">'.$telebe.' </span>olaraq giriş edilmişdir.';
			?>
			<hr/>
			<ul class="nav nav-tabs" role="tablist" id="myTab">
  <li role="presentation" class="active"><a href="#transkript" aria-controls="home" role="tab" data-toggle="tab">Transkript</a></li>
  <li role="presentation"><a href="#tehsil" aria-controls="profile" role="tab" data-toggle="tab">Təhsil Haqqında Arayış</a></li>
  <li role="presentation"><a href="#teqaud" aria-controls="messages" role="tab" data-toggle="tab">Təqaüd haqqında Arayış</a></li>
</ul>

<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="transkript"><?php include("transkript.php");?></div>
  <div role="tabpanel" class="tab-pane" id="tehsil">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut</div>
  <div role="tabpanel" class="tab-pane" id="teqaud"></div>

</div>

<script>
  $(function () {
    $('#myTab a:last').tab('show')
  })
</script>
		</div>
   </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>
<?php
	}else{
	exit;
		}
?>