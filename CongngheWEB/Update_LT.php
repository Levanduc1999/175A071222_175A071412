<?php
    $I=$_GET['id'];   
    $con=new mysqli("localhost","root","","btl") or die("Kết nối thất bại");
    mysqli_set_charset($con, 'utf8');
    $sql="Select * from lich_trinh_giang_day Where ID=$I" ;
    $result=mysqli_query($con,$sql); 
        while ($r=mysqli_fetch_assoc($result)) {
            $ID=$r['ID'];
            $MaMon=$r['MaMon'];
            $MaLop=$r['MaLop'];
            $MaGV=$r['MaGV'];
            $Ngayhoc=$r['Ngayhoc'];
            $Cahoc=$r['Cahoc'];     
        }
?>

<h1>Cập Nhật Lịch Trình</h1>
<form action="Xl_Update_LT.php" method="post">
    <input type="hidden" name="I" value="<?php echo $I ?>"><br>
    ID: <input type="text" name="ID"  value="<?php echo $ID ?>"><br>
    Mã Môn: <input type="text" name="MaMon" value="<?php echo $MaMon ?>"><br>
    Mã Lớp: <input type="text" name="MaLop"  value="<?php echo $MaLop ?>"><br>
    Mã Giáo viên: <input type="text" name="MaGV"  value="<?php echo $MaGV ?>"><br>
    Ngày học: <input type="text" name="Ngayhoc" value="<?php echo $Ngayhoc ?>"><br>
    Ca học: <input type="text" name="Cahoc" value="<?php echo $Cahoc ?>"><br>
    <input type="submit" value="Cập Nhật Lịch Trình">
</form>