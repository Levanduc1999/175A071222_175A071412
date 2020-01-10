<?php
    $id=$_POST['id'];
    $MaGV=$_POST['MaGV'];
    $TenGV=$_POST['TenGV'];
    $TrinhDo=$_POST['TrinhDo'];
    $MaKhoa=$_POST['MaKhoa'];
    $con=new mysqli("localhost","root","","btl") or die("Kết nối thất bại");
    mysqli_set_charset($con, 'utf8');
    $sql="update giaovien set MaGV='$MaGV',TenGV='$TenGV',TrinhDo='$TrinhDo',MaKhoa='$MaKhoa' Where MaGV='$id' " ;
    $result=mysqli_query($con,$sql);
    if ($result){
        header("location:Giangvien.php");
    }
?>