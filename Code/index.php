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
        <div class="content-left">
           <div class="content-introduce">
            <h3>GIỚI THIỆU</h3>
                <p><strong>“Động Vật Việt Nam”</strong> là website cung cấp thông tin của một số loài động vật hoang dã sinh sống trong môi trường sinh thái của Việt Nam.</p>
                <ul><strong>Các chức năng chính:</strong>
                    <li>1. Tìm kiếm các loài động vật theo tên khoa học hoặc tên địa phương.</li>
                    <li>2. Lọc danh sách các loài theo phân loại khoa học (Giới, Ngành, Lớp).</li>
                    <li>3. Cung cấp hình ảnh và thông tin chi tiết về các loài động vật được tìm kiếm.</li>
                    <li>4. Thành viên được phép gửi yêu cầu cập nhật cơ sở dữ liệu.</li>
                </ul>
                <p><i>Dự án này được thực hiện nhằm phục vụ cho học phần Tương Tác Người Máy. Cơ dữ liệu được cung cấp bởi giảng viên của học phần.</i></p>

           </div>
           <div class="content-random">
                <h3>TIÊU BIỂU</h3>
                <div class="content-trend">
                    <?php include 'random.php'; ?>
                </div>   
            </div>              
        </div>
        <div class="content-right">
            <div class="content-user">
                <h3>THÀNH VIÊN</h3>
                <?php include 'user.php'; ?>
                <button id="read-more" onClick="readMore()">Xem thêm</button>
            </div>
            <div class="content-new">
                <h3>MỚI NHẤT</h3>
                <?php include 'new.php'; ?>
                <button id="read-more-update" onClick="readMoreUpdate()">Xem thêm</button>
            </div>                           
        </div>
    </div>  
    <?php include 'footer.php'; ?>
<script src="js/script.js"></script>
</body>
</html>
