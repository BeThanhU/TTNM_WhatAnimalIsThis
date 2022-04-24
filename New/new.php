<?php
    include_once "php/connection.php";

    $sql = "SELECT users.fullname, animals_update.TenKhoaHoc 
        FROM users INNER JOIN animals_update 
        ON users.user_id = animals_update.NguoiYeuCau 
        ORDER BY animals_update.NgayCapNhat DESC";
    $result=$conn->query($sql);
    if(mysqli_num_rows($result) == 0){
        echo "<p align='center'>Không tìm thấy thông tin trong hệ thống!!!</p>";
    }
        else{ 
                $dem = 1;
                echo "
                <div class='user-list'>
                    <ol>";
                    while($row = $result->fetch_assoc()){
                        if($dem>3){
                            echo "<li class='moreUpdate'>".$row['fullname']." đã cập nhật <a href='detail_page.php?tendv=".$row['TenKhoaHoc']."'>".$row['TenKhoaHoc']."</a></li>";
                        }
                        else {
                            echo "<li>".$row['fullname']." đã cập nhật <a href='detail_page.php?tendv=".$row['TenKhoaHoc']."'>".$row['TenKhoaHoc']."</a></li>";
                        }  
                        $dem++;                      
                    }
                echo "</ol>
                    </div>";                
                }    
                    
?>