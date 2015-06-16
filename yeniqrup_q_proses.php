<?php
session_start();
include("functions.php");
include("configM.php");

    if ($_SERVER['REQUEST_METHOD'] === 'POST' && $_POST['submit']==='submit' ) {
    header('Content-type:text/html; charset=utf-8'); 

    
    $qrup_ad = mysql_real_escape_string($_POST['qrup_ad']);
    $ixtisas_ad = mysql_real_escape_string($_POST['ixtisas_ad']);
    $fakulte_ad = mysql_real_escape_string($_POST['fakulte_ad']);
    $sobe = mysql_real_escape_string($_POST['sobe']);
    $bolme = mysql_real_escape_string($_POST['bolme']);
    }


$sql = "INSERT INTO qrup (ad, fakulte, ixtisas, sobe, bolme) values('$qrup_ad', '$fakulte_ad', '$ixtisas_ad', '$sobe', '$bolme')";
        $net = mysql_query($sql);
        if(!$net){
            echo '<span class="label label-warning">Xəta baş verdi. Qrup qeydiyyatı tamamlanmadı. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
            //    header("Refresh: 5; url=http://localhost/dis/yeniqrupp.php");
        }else{
                echo '<span class="label label-success">Qrup qeydiyyatı uğurla tamamlandı. Ana səhifəyə yönləndirilirsiniz...</span>';
                header("Refresh: 5; url=http://localhost/dis/main.php");
        }
    
?>