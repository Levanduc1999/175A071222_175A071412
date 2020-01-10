<?php   
     $con=new mysqli("localhost","root","","btl") or die("Kết nối thất bại");
     mysqli_set_charset($con, 'utf8');
include('header.php'); 
?>
    <main>
        <div class="container">
            <div class="row">
                <div class="col-md-2 menu">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="home.php" role="tab" aria-controls="v-pills-home" aria-selected="true">Trang chủ</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="Sinhvien.php" role="tab" aria-controls="v-pills-profile" aria-selected="false">Quản lí sinh viên</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="Giangvien.php" role="tab" aria-controls="v-pills-profile" aria-selected="false"> Quản lí Giảng viên</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="LichHoc.php" role="tab" aria-controls="v-pills-profile" aria-selected="false"> Lịch Trình Giảng Dạy</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="QL_diemdanh.php" role="tab" aria-controls="v-pills-settings" aria-selected="false">Quản lí điểm danh</a>
                    </div>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-9">
                    <h1>Lịch Trình Giảng dạy</h1>
                    <table width=100% border="1">
                    <tr>
                        <th>Mã sinh viên</th>
                        <th>Tên sinh viên</th>
                        <th>Điểm danh</th>
                        <th>Lí Do</th>                     
                        <th>Xóa</th>
                                             
                    </tr>
                    <?php
                        $sql="Select MaSV,TenSV From diemdanh";
                        $result=mysqli_query($con,$sql);
                        if(mysqli_num_rows($result)>0){
                            while ($r=mysqli_fetch_assoc($result)) {
                                $MaSV=$r['MaSV'];
                                $TenSV=$r['TenSV'];                             
                                echo "<tr>";
                                echo "<td>$MaSV</td>";
                                echo "<td>$TenSV</td>";
                                echo "<td><input type='text' name='ID' ></td>";
                                echo "<td><input type='text' name='ID1' ></td>";                               
                                echo "<td><a href='delete_LT.php?id=$ID'><img src='images/deleted.gif' border='0'></a></td>";                                
                                echo "</tr>";
                            }
                        }else{
                            echo " Khong co ban ghi nao";
                        }
                    ?>
                    </table>
                    <form action="Luu_DD.php">
                        <input type="submit" name="Them" value="Lưu"/>
                    </form>
                </div>
            </div>
        </div>
<?php include('footer.php'); ?>


