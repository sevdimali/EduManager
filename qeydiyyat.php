<?php 
/*Header*/
include("configM.php");
include("functions.php");
session_start();
if (!isset($_SESSION['login_type'])){
die();
}
else{
$login_id = mysql_real_escape_string($_SESSION['id']);
if (!$_SESSION['login_type'] == 'm' && is_admin($login_id) == false){
die();
}else{
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
<div class="container-fluid">
		<div class="row">
        <a href="<?php echo $site_url; ?>main.php">Ana Səhifə</a>		
<div class="col-md-6 col-md-offset-3">
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Müəllim Qeydiyyatı</h3>
  </div>
  <div class="panel-body">
    
<form class="form-horizontal" role="form" action="qeydiyyat_prosessinq.php" method="post">
  <div class="form-group">
    <label for="ad" class="col-sm-4 control-label">Ad</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="ad" name="ad" placeholder="Adı daxil edin">
    </div>
  </div>
  <div class="form-group">
    <label for="soyad" class="col-sm-4 control-label">Soyad</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="soyad" name="soyad" placeholder="Soyadı daxil edin">
    </div>
  </div>
  <div class="form-group">
    <label for="ataad" class="col-sm-4 control-label">Ata adı</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="ataad" name="ataad" placeholder="Ata adı daxil edin">
    </div>
  </div>
  <div class="form-group">
    <label for="elmider" class="col-sm-4 control-label">Elmi dərəcə</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="elmi" name="elmider" placeholder="Elmi dərəcəni daxil edin">
    </div>
  </div>
  <div class="form-group">
    <label for="elmiad" class="col-sm-4 control-label">Elmi ad</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="elmiad" name="elmiad" placeholder="Elmi adı daxil edin">
    </div>
  </div>
  <div class="form-group">
    <label for="fakulte" class="col-sm-4 control-label">Fakültə</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="fakulte" name="fakulte" placeholder="Fakültə">
    </div>
  </div>
  <div class="form-group">
    <label for="kafedra" class="col-sm-4 control-label">Kafedra</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="kafedra" name="kafedra" placeholder="Kafedra">
    </div>
  </div>
  <hr/>
  <div class="form-group">
    <label for="email" class="col-sm-4 control-label">Email</label>
    <div class="col-sm-8">
      <input type="email" class="form-control" id="email" name="email" placeholder="Email">
    </div>
  </div>
  <div class="form-group">
    <label for="sifre" class="col-sm-4 control-label">Şifrə</label>
    <div class="col-sm-8">
      <input type="password" class="form-control" id="sifre" name="sifre" placeholder="password">
    </div>
  </div>
  
  <div class="form-group">
    <label for="status" class="col-sm-4 control-label">Status</label>
    <div class="col-sm-8">
      <div class="radio">
  <label>
    <input type="radio" name="status" id="status1" value="admin" checked>
    Admin
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="status" id="status2" value="normal" checked="true">
    Normal istifadəçi
  </label>
</div>
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-md-6 col-md-offset-3">
    <input type="submit" value="qeydiyyat" name="submit" class="btn btn-info submit col-md-12">
    </div>
  </div>
</form>
  </div>
</div>
</div>
</div>
</body>
</html>
<?php
}
}
?>
