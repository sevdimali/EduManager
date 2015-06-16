<?php

session_start();
include("functions.php");
include("configM.php");
if ($_SERVER['REQUEST_METHOD'] === 'POST' && $_POST['submit'] === 'qeydiyyat'){
if (
    !isset($_POST["ad"]) ||
    !isset($_POST["soyad"]) ||
    !isset($_POST["ataad"]) ||
    !isset($_POST["elmider"]) ||
    !isset($_POST["elmiad"]) ||
    !isset($_POST["fakulte"]) ||
    !isset($_POST["kafedra"]) ||
    !isset($_POST["status"]) ||
    !isset($_POST["email"]) ||
    !isset($_POST["sifre"]) 
    ){
    echo '<span class="label label-warning">Hansısa sahə doldurulmayıb. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
                header("Refresh: 5; url=http://localhost/dis/qeydiyyat.php");

}
else {
$ad = mysql_real_escape_string($_POST["ad"]);
$soyad = mysql_real_escape_string($_POST["soyad"]);
$ata_adi = mysql_real_escape_string($_POST["ataad"]);
$elmi_der = mysql_real_escape_string($_POST["elmider"]);
$elmi_ad = mysql_real_escape_string($_POST["elmiad"]);
$fakulte = mysql_real_escape_string($_POST["fakulte"]);
$kafedra = mysql_real_escape_string($_POST["kafedra"]);
$email = mysql_real_escape_string($_POST["email"]);
$sifre = md5(mysql_real_escape_string($_POST["sifre"]));
$status = mysql_real_escape_string($_POST["status"]);


$sql = "INSERT into muellim (ad, soyad, ata_adi, elmi_der, elmi_ad, fakulte, kafedra, parol, email, status) VALUES
            ('$ad','$soyad','$ata_adi','$elmi_der','$elmi_ad','$fakulte','$kafedra','$sifre','$email','$status')";

$net = mysql_query($sql);
if (!$net){
echo '<span class="label label-warning">X?ta bas verdi. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
                header("Refresh: 5; url=http://localhost/dis/qeydiyyat.php");
}else{
        echo '<span class="label label-success">Əlavə olundu. Əvvəlki səhifəyə yönləndirilirsiniz...</span>';
                header("Refresh: 5; url=http://localhost/dis/qeydiyyat.php");
}

}
}
else{ echo'<span class="label label-warning">Xəta baş verdi. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
                header("Refresh: 5; url=http://localhost/dis/qeydiyyat.php");
}
?>