<?php
    include_once "php/connection.php";
    $sql = "SELECT * FROM animals GROUP BY Lop";
    $sql1 = "SELECT * FROM animals GROUP BY Bo";
    $sql2 = "SELECT * FROM animals GROUP BY Ho";

    $result=$conn->query($sql);
    $result1=$conn->query($sql1);
    $result2=$conn->query($sql2);

    if(mysqli_num_rows($result) == 0){
        echo "<p align='center'>Không tìm thấy thông tin trong hệ thống!!!</p>";
    }
        else{ 
                echo "
                <div class='content-search-select-items'>                    
                <span>Lớp:</span><select id='Lop'>
                    <option>Tất cả</opton>";
                    while($row = $result->fetch_assoc()){
                        echo"<option>".$row['Lop']."</option>";                        
                    }
                echo "</select></div>";
                echo "
                <div class='content-search-select-items'>                    
                <span>Bộ:</span><select id='Bo'>
                    <option>Tất cả</opton>";
                    while($row1 = $result1->fetch_assoc()){
                        echo"<option>".$row1['Bo']."</option>";                        
                    }
                echo "</select></div>";
                echo "
                <div class='content-search-select-items'>            
                    <span>Họ:</span><select id='Ho'>
                        <option>Tất cả</opton>";
                    while($row2 = $result2->fetch_assoc()){
                        echo"<option>".$row2['Ho']."</option>";                        
                    }
                echo "</select></div>";
                }    
                    
?>