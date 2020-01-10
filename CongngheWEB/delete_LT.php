<?php
    $ID=$_GET['id'];   
    $con=new mysqli("localhost","root","","btl") or die("Kết nối thất bại");
    mysqli_set_charset($con, 'utf8');
    $sql="Delete from lich_trinh_giang_day Where ID=$ID" ;
    $result=mysqli_query($con,$sql);
    if ($result){
        header("location:LichHoc.php");
    }
?>