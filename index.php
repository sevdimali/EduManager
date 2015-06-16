<?php 
/*Header*/
include("configM.php");
include("functions.php");
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>EduManager v1.0</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="stil.css" rel="stylesheet">
</head>

<body>
<div class="container">
		<div class="row">
			<div class="col-md-12">
<div class="basliq"><img src="img/banner.png"></div>
		
<div class="merkez">
<p><h2><center>Giriş</center></h2></p>
<?php	
session_start();
//ob_start();
if($_POST){
$email = trim($_POST["email"]);
$password = md5(trim($_POST["password"]));

$sorgu = "select * from muellim where email='$email' and parol='$password'";
$tap_netice = mysql_query($sorgu);

$goster_netice = mysql_fetch_array($tap_netice);
if(mysql_num_rows($tap_netice)>1){
	$_SESSION['login_type'] = 'm';
	$_SESSION['id'] = $goster_netice["id"];
	header('Location: http://localhost/dis/main.php');
	}
	elseif(mysql_num_rows($tap_netice)==0)
	{
	$tap_netice = mysql_query("select * from telebeler where email='$email' and parol='$password'");
	$goster_netice = mysql_fetch_array($tap_netice);
	if(mysql_num_rows($tap_netice)==1){
	$_SESSION['login_type'] = 't';
	$_SESSION['id'] = $goster_netice["id"];
	header('Location: http://localhost/dis/main.php');
	}
	}
		elseif(mysql_num_rows($tap_netice)==0)
	{
		echo '<span style="margin-bottom:10px;" class="label label-danger">Daxil etdiyiniz email və şifrə kombinasiyası yanlışdır</span>';
		header("Refresh: 5; url=index.php");
	}
	ob_end_flush();
}?>
<form class="form-horizontal" role="form" action="index.php" method="post">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email2" name="email" placeholder="Email">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Şifrə</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="password" name="password" placeholder="Şifrə">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Daxil ol</button>
    </div>
  </div>
</form>
</div>
	</div>
		<div>
</body>
</html>