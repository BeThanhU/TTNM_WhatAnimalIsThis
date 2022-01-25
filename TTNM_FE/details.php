<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết con vật</title>
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="details.css">
    
    <!--==================== SWIPER CSS ====================-->
    <link rel="stylesheet" href="swiper-bundle.min.css">
</head>
<body>
    <div class="navbar">
        <img src="img/animals.jpg" class="logo" alt="icon">
        <nav>
            <ul>
                <li><a href="index.html">TRANG CHỦ</a></li>
                <li><a href="search.html">TÌM KIẾM</a></li>
                <li><a href="">TÁC GIẢ</a></li>
            </ul>
        </nav>
    </div>
    <?php
    $con = new mysqli("localhost","root","","animals");
    if ($con -> connect_errno) {
        echo "Failed to connect to MySQL: ".$mysqli->connect_error;
        exit();
      }
	$con->set_charset("utf8");
	$kq=$_GET['tendv'];
    $sql = "SELECT * FROM animals WHERE (TentiengViet LIKE '%".$kq."%') OR (Tenkhoahoc LIKE '%".$kq."%')";
	$result=$con->query($sql);
    while($row = $result->fetch_assoc()){

    echo "<section class='product-details'>
            <div class='image-slider swiper swiper-container'>
                <div class='product-images swiper-wrapper'>
                    <div class='swiper-slide'>
                        <img height='500px' src='https://drive.google.com/uc?export=view&id=".$row['Hinhanh1']."'>
                    </div>

                    <div class='swiper-slide'>
                        <img height='500px' src='https://drive.google.com/uc?export=view&id=".$row['Hinhanh2']."'>

                    </div>

                    <div class='swiper-slide'>
                        <img height='500px' src='https://drive.google.com/uc?export=view&id=".$row['Hinhanh3']."'>
                    </div>

                    <div class='swiper-slide'>
                        <img height='500px' src='https://drive.google.com/uc?export=view&id=".$row['Hinhanh4']."'>
                    </div>

                    <div class='swiper-slide'>
                        <img height='500px' src='https://drive.google.com/uc?export=view&id=".$row['Hinhanh5']."'>
                    </div>
                </div>
                    <div class='swiper-pagination'></div>
            </div>
            <div class='details'>
                <p class='product-brand'>Tên tiếng Việt: ".$row['TentiengViet']."</p>
                <p class='product-brand'>Tên địa phương: ".$row['Tendiaphuong']."</p>
                <p class='product-brand'>Tên khoa học: ".$row['Tenkhoahoc']." </p>
                <p class='product-brand'>Giới: ".$row['Gioi']."</p>
                <p class='product-brand'>Ngành: ".$row['Nganh']."</p>
                <p class='product-brand'>Lớp: ".$row['Lop']."</p>
                <p class='product-brand'>Bộ: ".$row['Bo']."</p>
                <p class='product-brand'>Họ: ".$row['Ho']."</p>
                <p class='product-brand'>Phân bố: ".$row['Phanbo']."</p>
                <p class='product-brand'>Giá trị sử dụng: ".$row['Giatrisudung']."</p>
                </div>
        </section>

    <section class='detail-des'>
        <h2 class='heading'>Đặc điểm hình thái</h2>
        <p class='des'>".$row['Hinhthai']."</p>
        <h2 class='heading1'>Đặc điểm sinh thái</h2>
        <p class='des'>".$row['Sinhthai']."</p>
        <h2 class='heading1'>Thông tin bảo tồn</h2>
        <p class='des'>Tình trạng bảo tồn theo IUCN: ".$row['BaotonIUCN']."</p>
        <p class='des'>Tình trạng bảo tồn theo sách đỏ Việt Nam: ".$row['BaotonVN']."</p>
        <p class='des'>Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP: ".$row['Baoton32']."</p>
        <p class='des'>Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT):".$row['BaotonCITES']."</p>
        <h2 class='heading1'>Thông tin mẫu vật</h2>
        <p class='des'>Tình trạng mẫu vật: ".$row['Tinhtrangmauvat']."</p>
        <p class='des'>Sinh cảnh: ".$row['Sinhcanh']."</p>
        <p class='des'>Địa điểm: ".$row['Tinhtrangmauvat']."</p>
        <p class='des'>Tình trạng mẫu vật: ".$row['Tinhtrangmauvat']."</p>
        <p class='des'>Ngày thu mẫu: ".$row['Ngaythumau']."</p>
        <p class='des'>Người thu mẫu: ".$row['Nguoithumau']."</p>
    </section>";
    }
    ?>

    

    
</body>
</html>

<script src="js/home.js"></script>
<script src="js/swiper-bundle.min.js"></script>
<script src="js/details.js"></script>