<?php
    include '1_config.php';
    $uId=$_REQUEST['uId'];

    $output=[];
    $sql="select fid from contactlist where oId='$uId'";
    $result= mysql_query($sql,$conn);
    $fList=mysql_fetch_array($result);
    $friend=[];
?>
