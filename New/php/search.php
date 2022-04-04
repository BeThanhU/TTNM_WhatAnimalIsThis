<?php
$con = new mysqli("localhost","root","","db_animals");
if ($con -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
exit();
}    $con->set_charset("utf8");
    $kq=$_GET['kqtk'];
    
    $sql = "SELECT animals.TenKhoaHoc, animals.TenTiengViet, animals.TenDiaPhuong, animals_img.HinhAnh 
    FROM animals LEFT JOIN animals_img 
    ON animals.TenKhoaHoc = animals_img.TenKhoaHoc 
    WHERE (animals.TenTiengViet LIKE '%".$kq."%') OR (animals.TenKhoaHoc LIKE '%".$kq."%') OR (animals.TenDiaPhuong LIKE '%".$kq."%')
    GROUP BY animals.TenKhoaHoc";

    $sql1 = "SELECT animals.TenKhoaHoc, animals.TenTiengViet, animals.TenDiaPhuong, animals_img.HinhAnh 
    FROM animals LEFT JOIN animals_img 
    ON animals.TenKhoaHoc = animals_img.TenKhoaHoc 
    WHERE (animals.TenTiengViet LIKE '%".$kq."%') OR (animals.TenDiaPhuong LIKE '%".$kq."%')
    GROUP BY animals.TenKhoaHoc
    ORDER BY animals.TenTiengViet";

    $sql2 = "SELECT animals.TenKhoaHoc, animals.TenTiengViet, animals.TenDiaPhuong, animals_img.HinhAnh 
    FROM animals LEFT JOIN animals_img 
    ON animals.TenKhoaHoc = animals_img.TenKhoaHoc 
    WHERE (animals.TenKhoaHoc LIKE '%".$kq."%')
    GROUP BY animals.TenKhoaHoc
    ORDER BY animals.TenKhoaHoc";

    $result=$con->query($sql);
    $result1=$con->query($sql1);
    $result2=$con->query($sql2);

        if(mysqli_num_rows($result) == 0){
            echo "<p align='center'>Không tìm thấy động vật trong hệ thống!!!</p>";
        }
        else{ 
            if(mysqli_num_rows($result1) != 0){
                echo "<br><h2>Danh sách động vật tìm thấy theo tên Tiếng Việt hoặc tên địa phương</h2><br>";
                echo "<div class='div-results'>";
                    while($row = $result1->fetch_assoc()){
                        echo "<div class='div-results-items'>
                        <div class='result-img'>
                        <a href='./detail_page.php?tendv=".$row['TenTiengViet']."'>
                            <img width='250px' src='".$row['HinhAnh']."'></img>
                        </a>
                        </div>                            
                            <div class='result-name'>
                        <a href='./detail_page.php?tendv=".$row['TenTiengViet']."'>".$row['TenTiengViet']."</a>                    
                                    <br>
                                    Tên địa phương: ".$row['TenDiaPhuong']."
                                    <br>
                                    ".$row['TenKhoaHoc']."
                                </div>			
                        </div>";
                    }
                echo "</div>";
                }
                
                if(mysqli_num_rows($result2) != 0){
                    echo "<br><h2>Danh sách động vật tìm thấy theo tên khoa học</h2><br>";
                    echo "<div class='div-results'>";
                        while($row = $result2->fetch_assoc()){
                            echo "<div class='div-results-items'>
                            <div class='result-img'>
                                <a href='./detail_page.php?tendv=".$row['TenTiengViet']."'>
                                    <img width='250px' src='".$row['HinhAnh']."'></img>
                                </a>
                            </div>                            
                                <div class='result-name'>
                            <a href='./detail_page.php?tendv=".$row['TenTiengViet']."'>".$row['TenKhoaHoc']."</a>                    
                                        <br>
                                        Tên địa phương: ".$row['TenDiaPhuong']."
                                        <br>
                                        ".$row['TenTiengViet']."
                                    </div>			
                            </div>";
                        }
                    echo "</div>";
                    }
                }    
                    
?>