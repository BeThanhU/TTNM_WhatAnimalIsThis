<?php
    include_once "php/connection.php";
    $sql = "SELECT * FROM users";
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
                            echo "<li class='more'>".$row['fullname']."</li>";
                        }
                        else {
                            echo"<li>".$row['fullname']."</li>";                       
                        }  
                        $dem++;                      
                    }
                echo "</ol>
                    </div>";                
                }    
                    
?>