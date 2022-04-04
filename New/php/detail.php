<?php
$con = new mysqli("localhost","root","","db_animals");
if ($con -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
exit();
}	$con->set_charset("utf8");
    $tendv=$_GET['tendv'];
    $sql = "SELECT * 
            FROM animals LEFT JOIN animals_img 
            ON animals.TenKhoaHoc = animals_img.TenKhoaHoc
            WHERE animals.TenTiengViet = '$tendv'
            GROUP BY animals.TenKhoaHoc
            ORDER BY animals.TenTiengViet";
    $result=$con->query($sql);
    if(mysqli_num_rows($result) == 0){
        echo "<p align='center'>Không tìm thấy động vật trong hệ thống!!!</p>";
    }
    else{ 
    while($row = $result->fetch_assoc()){
    echo "
    <section class='product-details'>
        <div class='product-images'>
            <img src='".$row['HinhAnh']."'>
        </div>
        <div class='details'>
                <p class='product-brand'><span>Tên tiếng Việt: </span>".$row['TenTiengViet']."</p>
                <p class='product-brand'><span>Tên địa phương: </span>".$row['TenDiaPhuong']."</p>
                <p class='product-brand'><span>Tên khoa học: </span>".$row['TenKhoaHoc']." </p>
                <p class='product-brand'><span>Giới: </span>".$row['Gioi']."</p>
                <p class='product-brand'><span>Ngành: </span>".$row['Nganh']."</p>
                <p class='product-brand'><span>Lớp: </span>".$row['Lop']."</p>
                <p class='product-brand'><span>Bộ: </span>".$row['Bo']."</p>
                <p class='product-brand'><span>Họ: </span>".$row['Ho']."</p>
                <p class='product-brand'><span>Phân bố: </span>".$row['PhanBo']."</p>
                <p class='product-brand'><span>Giá trị sử dụng: </span>".$row['GiaTri']."</p>
                </div>
        </section>

    <section class='detail-des'>
        <h2 class='heading'>Đặc điểm hình thái</h2>
        <p class='des'>".$row['HinhThai']."</p>
        <h2 class='heading'>Đặc điểm sinh thái</h2>
        <p class='des'>".$row['SinhThai']."</p>
        <h2 class='heading'>Thông tin bảo tồn</h2>
        <p class='baoton'>Tình trạng bảo tồn theo IUCN: ".$row['BaoTonIUCN']."</p>
        <p class='baoton'>Tình trạng bảo tồn theo sách đỏ Việt Nam: ".$row['BaoTonVN']."</p>
        <p class='baoton'>Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP: ".$row['BaoTon32']."</p>
        <p class='baoton'>Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT):".$row['BaoTonCITES']."</p>
    </section>";
    }
}
    ?>