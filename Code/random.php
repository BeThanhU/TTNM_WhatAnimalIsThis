<?php
    include_once "php/connection.php";
    $sql = "SELECT animals.TenKhoaHoc, animals.TenTiengViet, animals.TenDiaPhuong, animals_img.HinhAnh 
            FROM animals INNER JOIN animals_img 
            ON animals.TenKhoaHoc = animals_img.TenKhoaHoc
            GROUP BY animals.TenKhoaHoc
            ORDER BY RAND()
            LIMIT 4";
    $result=$conn->query($sql);
    if(mysqli_num_rows($result) == 0){
        echo "<p align='center'>Không tìm thấy động vật trong hệ thống!!!</p>";
    }
    else{ 
            while($row = $result->fetch_assoc()){                            
                // if($dem % 3 == 1) echo "<div class='collection-result'>";
                echo "<div class='div-results'>
                    <div class='result-img'>
                    <img width='250px' src='".$row['HinhAnh']."'></img>
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
    }                    
?>