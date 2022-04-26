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
                <input type="text" name="tenkhoahoc" value="Eutropis multifasciata (Kuhl, 1820)" value="Thằn lằn bóng hoa" required>
            </div>
            <div class="field input">
                <label>Tên Tiếng Việt</label>
                <input type="text" name="tentiengviet" value="Thằn lằn bóng hoa" required>
            </div>
            <div class="field input">
                <label>Tên địa phương</label>
                <input type="text" name="tendiaphuong" value="Rắn mối" required>
            </div>
            <div class="field input">
                <label>Giới</label>
                <input type="text" name="gioi" value="Động vật (Animalia)" required>
            </div>
            <div class="field input">
                <label>Ngành</label>
                <input type="text" name="nganh" value="Động vật có dây sống (chordata)" required>
            </div>
            <div class="field input">
                <label>Lớp</label>
                <input type="text" name="lop" value="REPTILIA LAURENTI, 1768" required>
            </div>
            <div class="field input">
                <label>Bộ</label>
                <input type="text" name="bo" value="SQUAMATA OPPEL, 18411" required>
            </div>
            <div class="field input">
                <label>Họ</label>
                <input type="text" name="ho" value="Scincidae Opell, 1811" required>
            </div>
            <div class="field input">
                <label>Mô tả đặc điểm hình thái</label>
                <textarea rows="10" cols="50" name="hinhthai" form="update_form">Vảy trên mũi chạm nhau hoặc hơi tách biệt với nhau; một vảy sau mũi; vảy trước trán tiếp xúc nhau; vảy má thứ nhất không cao hơn vảy má thứ 2; không có đĩa ở dưới mi mắt; vảy thường có 3 sóng, hiếm khi nhiều  hơn; 30-34 hàng vảy giữa thân; các đường trên lưng giữa các vảy thường mờ, tối; hai bên thân màu sậm với nhiều điểm dạng mắt.</textarea>
            </div>
            <div class="field input">
                <label>Mô tả đặc điểm sinh thái</label>
                <textarea rows="10" cols="50" name="sinhthai" form="update_form">Là loài phổ biến trong khu vực rừng tràm Mỹ Phước, hoạt động ban ngày, thường được tìm thấy trong sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác. Kiếm ăn trên nền rừng, thức ăn của chúng là những loài côn trùng trong khu vực. Thường có tập tính phơi nắng vào buổi sáng hoặc sau các cơn mưa lớn.</textarea>
            </div>
            <div class="field input">
                <label>Giá trị sử dụng</label>
                <input type="text" name="giatri" value="Làm thực phẩm" required>
            </div>
            <div class="field input">
                <label>Tình trạng bảo tồn theo IUCN</label>
                <input type="text" name="baotonIUCN" value="Không có giá trị bảo tồn" required>
            </div>
                <div class="field input">
                <label>Tình trạng bảo tồn theo sách đỏ Việt Nam</label>
            <input type="text" name="baotonVN" value="Không có giá trị bảo tồn" required>
            </div>
                <div class="field input">
                <label>Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP</label>
            <input type="text" name="baoton32" value="Không nằm trong danh mục bảo tồn" required>
            </div>
            <div class="field input">
                <label>Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT):</label>
                <input type="text" name="baotonCITES" value="Không có trong danh mục" required>
            </div>
            <div class="field input">
                <label>Phân bố</label>
                <input type="text" name="phanbo" value="Phổ biến" required>
            </div>
            <div class="field input">
                <label>Tình trạng mẫu vật:</label>
                <input type="text" name="tinhtrang" value="Thu được mẫu" required>
            </div>
            <div class="field input">
                <label>Sinh cảnh</label>
                <input type="text" name="sinhcanh" value="Rừng tràm trồng" required>
            </div>
            <div class="field input">
                <label>Địa điểm thu mẫu</label>
                <input type="text" name="diadiem" value="Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng." required>
            </div>
            <div class="field input">
                <label>Ngày thu mẫu</label>
                <input type="text" name="ngaythumau" value="09/07/2018" required>
            </div>
            <div class="field input">
                <label>Người thu mẫu</label>
                <input type="text" name="nguoithumau" value="Nguyễn Quang Cường" required>
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
<script src="js/preview.js"></script>
<script src="js/update.js"></script>
</body>
</html>
