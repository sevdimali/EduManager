<?php

session_start();
include("functions.php");
include("configM.php");
if ($_SERVER['REQUEST_METHOD'] === 'POST' && $_POST['submit'] === 'qeydiyyatt'){
if (
    !isset($_POST["qruplar"]) ||
    !isset($_POST["ad"]) ||
    !isset($_POST["soyad"]) ||
    !isset($_POST["ataad"]) ||
    !isset($_POST["fakulte"]) ||
    !isset($_POST["telefon"]) ||
    !isset($_POST["email"]) ||
    !isset($_POST["sifre"]) 
    ){
    echo '<span class="label label-warning">Hansısa sahə doldurulmayıb. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
                header("Refresh: 5; url=http://localhost/dis/qeydiyyatt.php");

}
else {

$qrup = mysql_real_escape_string($_POST["qruplar"]);
$ad = mysql_real_escape_string($_POST["ad"]);
$soyad = mysql_real_escape_string($_POST["soyad"]);
$ata_adi = mysql_real_escape_string($_POST["ataad"]);
$fakulte = mysql_real_escape_string($_POST["fakulte"]);
$telefon = mysql_real_escape_string($_POST["telefon"]);
$email = mysql_real_escape_string($_POST["email"]);
$sifre = md5(mysql_real_escape_string($_POST["sifre"]));


$sql = "INSERT into telebeler (id_qrup, ad, soyad, ata_ad, fakulte, tel, parol, email) VALUES
            ('$qrup','$ad','$soyad','$ata_adi','$fakulte','$telefon','$sifre','$email')";

$net = mysql_query($sql);
if (!$net){
echo '<span class="label label-warning">Xəta bas verdi. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
                header("Refresh: 5; url=http://localhost/dis/qeydiyyatt.php");
}else{
        echo '<span class="label label-success">Əlavə olundu. Əvvəlki səhifəyə yönləndirilirsiniz...</span>';
                header("Refresh: 5; url=http://localhost/dis/qeydiyyatt.php");
}
}
}
else{ echo'<span class="label label-warning">Xəta bas verdi. Əməliyyatı təkrarlamalı olacaqsınız...</span>';
                header("Refresh: 5; url=http://localhost/dis/qeydiyyatt.php");
}
?>