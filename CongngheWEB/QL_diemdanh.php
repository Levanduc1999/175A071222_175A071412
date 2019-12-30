<?php
   $con = new mysqli('localhost','root','','btl_web') or die('Kết nối thất bại');
   mysqli_set_charset($con, 'utf8');
include('header.php'); 
?>
    <main>
        <div class="container">
            <div class="row">
                <div class="col-md-2 menu">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="home.php" role="tab" aria-controls="v-pills-home" aria-selected="true">Trang chủ</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="Sinhvien.php" role="tab" aria-controls="v-pills-profile" aria-selected="false">SinhVien</a>
                        <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-messages" aria-selected="false">Giảng Viên</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="QL_diemdanh.php" role="tab" aria-controls="v-pills-settings" aria-selected="false">Quản lí điểm danh</a>
                    </div>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-9">
                <table width="100%">
                        <tr>
                            <td>Mã sinh viên</td>
                            <td>Họ tên sinh viên</td>
                            <td>Mã lớp</td>
                            <td>Tên môn</td>
                            <td>Ngày điểm danh</td>
                            <td>Điểm danh</td>
                        </tr>
                </table>
                <?php 
                     
                ?>
                </div>
            </div>
        </div>
<?php include('footer.php'); ?>