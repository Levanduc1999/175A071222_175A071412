
<?php
    $Ma=$_GET['id'];   
    $con=new mysqli("localhost","root","","btl") or die("Kết nối thất bại");
    mysqli_set_charset($con, 'utf8');
    $sql="Select * from giaovien Where MaGV='$Ma'" ;
    $result=mysqli_query($con,$sql);
    
    while ($r=mysqli_fetch_assoc($result)) {
        $MaGV=$r['MaGV'];
        $TenGV=$r['TenGV'];
        $TrinhDo=$r['TrinhDo'];
        $MaKhoa=$r['MaKhoa'];
    }
?>

<h1>Cập nhật Giảng viên</h1>
<form action="Xl_Update_GV.php" method="post">
   <input type="hidden" name="id" value="<?php echo $Ma ?>"><br>
    Mã Giảng Viên: <input type="text" name="MaGV" value="<?php echo $MaGV ?>"><br>
    Tên Giảng Viên: <input type="text" name="TenGV" value="<?php echo $TenGV ?>"><br>
    Trình Độ: <input type="text" name="TrinhDo" value="<?php echo $TrinhDo?>"><br>
    Mã Khoa: <input type="text" name="MaKhoa" value="<?php echo $MaKhoa?>"><br>
    <input type="submit" value="Cập nhật Giảng viên">
</form>