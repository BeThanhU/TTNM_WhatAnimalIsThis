<!DOCTYPE html>
<html">
<head>
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="font-awesome/css/all.css">
    <link rel="stylesheet" href="collection.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="topnav" id="myTopnav">
        <div class="topnav-tag">
            <div class="topnav-logo">
                <a href="index.html"><img src="img/narbar-logo.svg"></a>
            </div>
            <div class="topnav-title">
                <a href="index.html" class="name">WHAT ANIMALS IS THIS?</a>
            </div>
            <div class="topnav-icon">
                <a href="javascript:void(0);" class="icon" onclick="showNarbav()">
                    <i class="fa-solid fa-bars"></i>
                </a>      
            </div> 
        </div>
        <div class="topnav-links">
            <a href="index.html" class="active">GIỚI THIỆU</a>
            <a href="collection.php" class="active">THƯ VIỆN</a>
            <a href="search.html" class="active">TÌM KIẾM</a>
        </div>
        <div class="topnav-search">
            <input type="text" placeholder="Nhập tên động vật..." id="abc">
            <a onclick="Redirect(abc.value)" style="color: inherit;" >
                <i class="fa-solid fa-magnifying-glass"></i>
            </a>
        </div>                
    </div>
    <div class="content">
        <div class="content-collection">
            <h3>THƯ VIỆN TỔNG HỢP</h3> 
            <h3>A - Z</h3>
            <div id="collection">
                <?php
                $dem = 1;
                $con = new mysqli("localhost","root","","animals");
                if ($con -> connect_errno) {
                    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                    exit();
                }
                $con->set_charset("utf8");
                $sql = "SELECT * FROM animals";
                $result=$con->query($sql);
                if(mysqli_num_rows($result) == 0){
                    echo "<p align='center'>Không tìm thấy động vật trong hệ thống!!!</p>";
                }
                else{ 
                        while($row = $result->fetch_assoc()){                            
                            if($dem % 3 == 1) echo "<div class='collection-result'>";
                            echo "<div class='div-results'>
                                <div class='result-img'>
                                    <img width='250px' src='https://drive.google.com/uc?export=view&id=".$row['Hinhanh1']."'></img>
                                </div>
                                <div class='result-name'>
                                    <a href='./details.php?tendv=".$row['TentiengViet']."'>".$row['TentiengViet']."</a>
                                    <br>
                                    Tên địa phương: ".$row['Tendiaphuong']."
                                    <br>
                                    ".$row['Tenkhoahoc']."
                                    ".$dem."
                                </div>			
                            </div>";
                            if ($dem % 3 == 0) {
                            echo "</div>";
                            }
                            $dem++;

                        }
                    }                    
            ?>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="footer-author">
            <p>Thực hiện bởi: </p>
            <p>Nguyễn Đình Thanh - B1805813</p>
            <p>Đinh Vĩnh Thái - B1805814</p>
            <p>Nguyễn Thị Bảo Nhiên - B1800115</p>
            <p>Phạm Tuấn Kiệt - B1704745</p>
        </div>
        <div class="footer-update">
            <p>Update: 14/03/2022</p>
            <br>
        </div>
    </div>

<script src="js/script.js"></script>

</body>
</html>
