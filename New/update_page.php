<?php 
  session_start();
  include_once "./php/connection.php";
  if(!isset($_SESSION['user_id'])){
    header("location: login_page.php");
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
    <div class="wrapper">
        <section class="form login">
        <header>Gửi yêu cầu cập nhật</header>
        <p>Vui lòng nhập đầy đủ các thông tin sau đây</p>
        <form action="php/update.php" method="POST" enctype="multipart/form-data" autocomplete="off" id="update_form">
            <div class="error-text"></div>           
            <div class="field input">
                <label>Tên khoa học:</label>
                <input type="text" name="tenkhoahoc" required>
            </div>
            <div class="field input">
                <label>Tên Tiếng Việt</label>
                <input type="text" name="tengtiengviet" required>
            </div>
            <div class="field input">
                <label>Tên địa phương</label>
                <input type="text" name="tendiaphuong" required>
            </div>
            <div class="field input">
                <label>Giới</label>
                <input type="text" name="gioi" value="Động vật" required>
            </div>
            <div class="field input">
                <label>Ngành</label>
                <input type="text" name="nganh" required>
            </div>
            <div class="field input">
                <label>Lớp</label>
                <input type="text" name="lop" required>
            </div>
            <div class="field input">
                <label>Bộ</label>
                <input type="text" name="bo" required>
            </div>
            <div class="field input">
                <label>Họ</label>
                <input type="text" name="ho" required>
            </div>
            <div class="field input">
                <label>Mô tả đặc điểm hình thái</label>
                <textarea rows="10" cols="50" name="hinhthai" form="update_form"></textarea>
            </div>
            <div class="field input">
                <label>Mô tả đặc điểm sinh thái</label>
                <textarea rows="10" cols="50" name="sinhthai" form="update_form"></textarea>
            </div>
            <div class="field input">
                <label>Giá trị sử dụng</label>
                <input type="text" name="giatri" required>
            </div>
            <div class="field input">
                <label>Tình trạng bảo tồn theo IUCN</label>
                <input type="text" name="baotonIUCN" required>
            </div>
                <div class="field input">
                <label>Tình trạng bảo tồn theo sách đỏ Việt Nam</label>
            <input type="text" name="baotonVN"  required>
            </div>
                <div class="field input">
                <label>Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP</label>
            <input type="text" name="baoton32"  required>
            </div>
            <div class="field input">
                <label>Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT):</label>
                <input type="text" name="baotonCITES"  required>
            </div>
            <div class="field input">
                <label>Phân bố</label>
                <input type="text" name="phanbo"  required>
            </div>
            <div class="field input">
                <label>Tình trạng mẫu vật:</label>
                <input type="text" name="tinhtrang"  required>
            </div>
            <div class="field input">
                <label>Sinh cảnh</label>
                <input type="text" name="sinhcanh"  required>
            </div>
            <div class="field input">
                <label>Địa điểm thu mẫu</label>
                <input type="text" name="diadiem"  required>
            </div>
            <div class="field input">
                <label>Ngày thu mẫu</label>
                <input type="text" name="ngaythumau"  required>
            </div>
            <div class="field input">
                <label>Người thu mẫu</label>
                <input type="text" name="nguoithumau"  required>
            </div>
            <div class="field image">
                <label>Nhập ảnh</label>
                <input type="file" name="image[]" id="file-input" accept="image/x-png,image/gif,image/jpeg,image/jpg" multiple required>
            </div>
            <div id="preview"></div>
            <div class="field button">
                <input type="submit" name="submit" value="Gửi">
            </div>
        </form>
        </section>
    </div>
    <?php include 'footer.php'; ?>
<script src="js/script.js"></script>
<script src="js/update.js"></script>
</body>
</html>
