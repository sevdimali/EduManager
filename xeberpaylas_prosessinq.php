<?php

session_start();
include("functions.php");
include("configM.php");
if ($_SERVER['REQUEST_METHOD'] === 'POST' && $_POST['submit'] === 'Paylaş'){

$id_yazar = $_SESSION['id'];
$tip_yazar = $_SESSION['login_type'];
$tarix = date('Y-m-d H:i:s');
$qrup = mysql_real_escape_string($_POST["qrup"]);
$yazi = mysql_real_escape_string($_POST["xeber"]);

$sql = "INSERT into yazilar (id_yazar, tip_yazar, tarix, qrup, yazi) VALUES ('$id_yazar','$tip_yazar','$tarix','$qrup','$yazi')";

$net = mysql_query($sql);
if (!$net){
echo '<span class="label label-warning">Xəta baş verdi. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
                header("Refresh: 2; url=http://localhost/dis/main.php");
}else{
        echo '<span class="label label-success">Xəbər paylaşıldı. Ana səhifəyə yönləndirilirsiniz...</span>';
                header("Refresh: 2; url=http://localhost/dis/main.php");
}

}
else{ echo'<span class="label label-warning">Xəta baş verdi. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
                header("Refresh: 2; url=http://localhost/dis/main.php");
}
?>