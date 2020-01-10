<?php
    $MaGV=$_GET['id'];   
    $con=new mysqli("localhost","root","","btl") or die("Kết nối thất bại");
    mysqli_set_charset($con, 'utf8');
    $sql="Delete from giaovien Where MaGV='$MaGV'" ;
    $result=mysqli_query($con,$sql);
    if ($result){
        header("location:Giangvien.php");
    }
?>