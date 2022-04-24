<?php 
  session_start();
  include_once "php/connection.php";
  if(!isset($_SESSION['user_id'])){
    header("location: login_page.php");
  }
  if($_SESSION['role'] !== 'admin'){
    header("location: index.php");
  }
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <?php include 'header.php'; ?>
    <?php
        include_once 'php/connection.php';
        $update=$_GET['update'];
        $sql = "SELECT * FROM animals_update WHERE TenKhoaHoc = '".$update."'";
        $result=$conn->query($sql);
        if(mysqli_num_rows($result) == 0){
            echo "<p align='center'>Không tìm thấy yêu cầu trong hệ thống!!!</p>";
        }
        else{ 
            while($row = $result->fetch_assoc()){
                echo "
                    <div class='wrapper'>
                    <section class='form login'>
                    <header>Chi tiết yêu cầu cập nhật</header>
                    <form action='php/admin_update.php' method='POST' enctype='multipart/form-data' autocomplete='off' id='update_form'>
                        <div class='error-text'></div>           
                        <div class='field input'>
                            <label>Tên khoa học:</label>
                            <input type='text' name='tenkhoahoc' value='".$row['TenKhoaHoc']."'>
                        </div>
                        <div class='field input'>
                            <label>Tên Tiếng Việt</label>
                            <input type='text' name='tengtiengviet' value='".$row['TenTiengViet']."'>
                        </div>
                        <div class='field input'>
                            <label>Tên địa phương</label>
                            <input type='text' name='tendiaphuong' value='".$row['TenDiaPhuong']."'>
                        </div>
                        <div class='field input'>
                            <label>Giới</label>
                            <input type='text' name='gioi' value='Động vật' value='".$row['Gioi']."'>
                        </div>
                        <div class='field input'>
                            <label>Ngành</label>
                            <input type='text' name='nganh' value='".$row['Nganh']."'>
                        </div>
                        <div class='field input'>
                            <label>Lớp</label>
                            <input type='text' name='lop' value='".$row['Lop']."'>
                        </div>
                        <div class='field input'>
                            <label>Bộ</label>
                            <input type='text' name='bo' value='".$row['Bo']."'>
                        </div>
                        <div class='field input'>
                            <label>Họ</label>
                            <input type='text' name='ho' value='".$row['Ho']."'>
                        </div>
                        <div class='field input'>
                            <label>Mô tả đặc điểm hình thái</label>
                            <textarea rows='10' cols='50' name='hinhthai' form='update_form'>'".$row['HinhThai']."'</textarea>
                        </div>
                        <div class='field input'>
                            <label>Mô tả đặc điểm sinh thái</label>
                            <textarea rows='10' cols='50' name='sinhthai' form='update_form'>'".$row['SinhThai']."'</textarea>
                        </div>
                        <div class='field input'>
                            <label>Giá trị sử dụng</label>
                            <input type='text' name='giatri' value='".$row['GiaTri']."'>
                        </div>
                        <div class='field input'>
                            <label>Tình trạng bảo tồn theo IUCN</label>
                            <input type='text' name='baotonIUCN' value='".$row['BaoTonIUCN']."'>
                        </div>
                            <div class='field input'>
                            <label>Tình trạng bảo tồn theo sách đỏ Việt Nam</label>
                        <input type='text' name='baotonVN' value='".$row['BaoTonVN']."'>
                        </div>
                            <div class='field input'>
                            <label>Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP</label>
                        <input type='text' name='baoton32' value='".$row['BaoTon32']."'>
                        </div>
                        <div class='field input'>
                            <label>Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT):</label>
                            <input type='text' name='baotonCITES' value='".$row['BaoTonCITES']."'>
                        </div>
                        <div class='field input'>
                            <label>Phân bố</label>
                            <input type='text' name='phanbo' value='".$row['PhanBo']."'>
                        </div>
                        <div class='field input'>
                            <label>Tình trạng mẫu vật:</label>
                            <input type='text' name='tinhtrang' value='".$row['TinhTrang']."'>
                        </div>
                        <div class='field input'>
                            <label>Sinh cảnh</label>
                            <input type='text' name='sinhcanh' value='".$row['SinhCanh']."'>
                        </div>
                        <div class='field input'>
                            <label>Địa điểm thu mẫu</label>
                            <input type='text' name='diadiem' value='".$row['DiaDiem']."'>
                        </div>
                        <div class='field input'>
                            <label>Ngày thu mẫu</label>
                            <input type='text' name='ngaythumau' value='".$row['NgayThuMau']."'>
                        </div>
                        <div class='field input'>
                            <label>Người thu mẫu</label>
                            <input type='text' name='nguoithumau' value='".$row['NguoiThuMau']."'>
                        </div>
                        <div class='field image'>
                            <label>Ảnh chụp</label>
                            <div class='update_img'>";
                            $sql2 = "SELECT * FROM animals_update_img WHERE TenKhoaHoc = '".$update."'";
                            $result2=$conn->query($sql2);                             
                            while($row2 = $result2->fetch_assoc()){
                                echo "<img src='./".$row2['HinhAnh']."'>";
                            }
                            echo "
                            </div>                                              
                        </div>";
                        if($row['TrangThai'] === 'Chờ duyệt') 
                        {
                            echo "<div class='field button'>
                            <input class='submit' type='submit' name='submit' value='Duyệt'>
                        </div>
                        <div class='field button2'>
                            <input class='submit' type='submit' name='cancel' value='Từ chối'>
                        </div>";
                        }     
                        echo "
                    </form>
                    </section>
                </div>
                ";
                }
            }
            ?>    
    <?php include 'footer.php'; ?>
<script src="js/script.js"></script>
<script src="js/admin_update.js"></script>
</body>
</html>
