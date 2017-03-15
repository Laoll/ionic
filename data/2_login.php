<?php
   header("Content-type: application/json; charset=utf-8");
   include '1_config.php';
   $postData = file_get_contents('php://input', true);
   $obj=json_decode($postData);
//   echo $postData;
//   echo $obj->uname;
//   $uname=$_REQUEST["uname"];
//   $pwd=$_REQUEST["pwd"];
   $output=[];
   $sql="SELECT * FROM persons where uname='$obj->uname' and pwd='$obj->pwd'";
   $result = mysql_query($sql,$conn);
   $row=mysql_fetch_array($result);
  if($row)
  {
       $output['uId']=$row['uId'];
       $output['IsSuccess']='true';
  }else{
      $output['uId']='';
      $output['IsSuccess']='false';
  }
  echo json_encode($output);
?>