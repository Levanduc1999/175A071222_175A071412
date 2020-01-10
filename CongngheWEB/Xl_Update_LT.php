<?php
    $ID=$_POST['I'];
    $ID=$_POST['ID'];
    $MaMon=$_POST['MaMon'];
    $MaLop=$_POST['MaLop'];
    $MaGV=$_POST['MaGV'];
    $Ngayhoc=$_POST['Ngayhoc'];
    $Cahoc=$_POST['Cahoc'];
    $con=new mysqli("localhost","root","","btl") or die("Kết nối thất bại");
    mysqli_set_charset($con, 'utf8');
    $sql="update lich_trinh_giang_day set ID=$ID,MaMon='$MaMon',MaLop='$MaLop',MaGV='$MaGV',Ngayhoc='$Ngayhoc',Cahoc=$Cahoc Where ID=$ID " ;
    $result=mysqli_query($con,$sql);
    if ($result){
        header("location:LichHoc.php");
    }
?>