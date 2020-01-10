<?php
    $id=$_POST['id'];
    $MaSV=$_POST['MaSV'];
    $TenSV=$_POST['TenSV'];
    $GioiTinh=$_POST['GioiTinh'];
    $QueQuan=$_POST['QueQuan'];
    $MaLop=$_POST['MaLop'];
    $con=new mysqli("localhost","root","","btl") or die("Kết nối thất bại");
    mysqli_set_charset($con, 'utf8');
    $sql="update sinhvien set MaSV='$MaSV',TenSV='$TenSV',GioiTinh='$GioiTinh',QueQuan='$QueQuan',MaLop='$MaLop' Where MaSV='$id' " ;
    $result=mysqli_query($con,$sql);
    if ($result){
        header("location:Sinhvien.php");
    }
?>