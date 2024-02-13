<?php
include("../connection/connect.php");
error_reporting(0);
session_start();

mysqli_query($db,"DELETE FROM item WHERE d_id = '".$_GET['list_del']."'");
header("location:all_list.php");  

?>
