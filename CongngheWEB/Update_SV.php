<?php
    $Ma=$_GET['id'];   
    $con=new mysqli("localhost","root","","btl") or die("Kết nối thất bại");
    mysqli_set_charset($con, 'utf8');
    $sql="Select * from sinhvien Where MaSV='$Ma'" ;
    $result=mysqli_query($con,$sql);
    while ($r=mysqli_fetch_assoc($result)) {
        $MaSV=$r['MaSV'];
        $TenSV=$r['TenSV'];
        $GioiTinh=$r['GioiTinh'];
        $QueQuan=$r['QueQuan'];
        $MaLop=$r['MaLop'];
    }
?>
<h1>Cập Nhật Sinh Viên</h1>
<form action="Xl_Update_SV.php" method="post">
    <input type="hidden" name="id" value="<?php echo $Ma ?>"><br>
    Mã Sinh Viên: <input type="text" name="MaSV" value="<?php echo $MaSV ?>"><br>
    Tên Sinh Viên: <input type="text" name="TenSV" value="<?php echo $TenSV ?>"><br>
    Giới Tính: <input type="text" name="GioiTinh" value="<?php echo $GioiTinh ?>"><br>
    Que Quán: <input type="text" name="QueQuan" value="<?php echo $QueQuan ?>"><br>
    Mã Lớp: <input type="text" name="MaLop" value="<?php echo $MaLop ?>"><br>
    <input type="submit" value="Cập Nhật Sinh Viên">
</form>