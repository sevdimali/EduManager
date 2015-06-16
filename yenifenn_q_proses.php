<?php
session_start();
include("functions.php");
include("configM.php");

    if ($_SERVER['REQUEST_METHOD'] === 'POST' && $_POST['submit']==='submit' ) {
    header('Content-type:text/html; charset=utf-8'); 

    
    $fenn_ad = mysql_real_escape_string($_POST['fenn_ad']);
    $ixtisas_ad = mysql_real_escape_string($_POST['ixtisas_ad']);
    $ders_saat = mysql_real_escape_string($_POST['ders_saat']);
    $lab_saat = mysql_real_escape_string($_POST['lab_saat']);
    $muh_saat = mysql_real_escape_string($_POST['muh_saat']);
    $mes_saat = mysql_real_escape_string($_POST['mes_saat']);
    $qruplar = mysql_real_escape_string($_POST['qruplar']);
    $kurs_is = mysql_real_escape_string($_POST['kurs_is']);
    }
    //qrupa görə id də tapılmalıdır. funks yazılacaq.
    $id_qrup = qrup_id_addan_tap($qruplar);    
    $id_muellim = $_SESSION['id'];
    $fenn_ad = $fenn_ad . '(' . $qruplar . ')';


$sql = "INSERT INTO fenler (id_qrup, id_muellim, ixtisas, ad, saat, lab_saat, muh_saat, mes_saat, kurs_isi) values('$id_qrup', '$id_muellim', '$ixtisas_ad','$fenn_ad','$ders_saat','$lab_saat','$muh_saat','$mes_saat','$kurs_is')";
        $net = mysql_query($sql);
        if(!$net){
            echo '<span class="label label-warning">Xəta baş verdi. Fənn qeydiyyatı tamamlanmadı. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
                header("Refresh: 5; url=http://localhost/dis/yenifenn.php");
        }else{
                echo '<span class="label label-success">Fənn qeydiyyatı uğurla tamamlandı. Ana səhifəyə yönləndirilirsiniz...</span>';
                header("Refresh: 5; url=http://localhost/dis/main.php");
        }
    
?>