<?php
if($_POST){
    $pass = md5(trim($_POST["pass"]));
    echo $pass;
}


?>

<form action="" method="post">
<input type="text" name="pass"/>
<input type="submit" value="yarat"/>
</form>