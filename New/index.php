<!DOCTYPE html>
<html>
<head>
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
       <?php include 'header.php'; ?>
       <div class="content">
        <div class="content-introduce">
            <h3>GIỚI THIỆU</h3>
            <p>“Động Vật Việt Nam” là website cung cấp thông tin về các loài động vật hoang dã sinh sống trong môi trường sinh thái của Việt Nam.</p>
            <ul> Các chức năng chính:
                <li>1. Tìm kiếm các loài động vật theo tên khoa học hoặc tên địa phương.</li>
                <li>2. Lọc danh sách các loài theo tên gọi, môi trường sống và phân loại khoa học (Giới, Ngành, Lớp)</li>
                <li>3. Cung cấp hình ảnh và thông tin chi tiết về các loài động vật được tìm kiếm </li>
            </ul>
        </div>
        <div class="content-trend">
            <h3>TIÊU BIỂU</h3>
            <a href="./detail_page.php?tendv=Trăn lưới">           
            <div class="card card1">
                <p>Trăn lưới</p>
            </div>
            </a>
            <a href="./detail_page.php?tendv=Thằn lằn bóng hoa">            
            <div class="card card2">
                <p>Thằn lằn bóng hoa</p>
            </div>
            </a>
            <a href="./detail_page.php?tendv=Chàng xanh">            
            <div class="card card3">
                <p>Chàng xanh</p>
            </div>
            </a>
            <a href="./detail_page.php?tendv=Thạch sùng garnot">            
            <div class="card card4">
                <p>Thạch sùng garnot</p>
            </div>
            </a>
        </div>
    </div>  
    <?php include 'footer.php'; ?>
<script src="js/script.js"></script>
</body>
</html>
