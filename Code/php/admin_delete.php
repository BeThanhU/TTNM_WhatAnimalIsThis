<?php
    session_start();
    include_once "connection.php";
    if(isset($_SESSION['user_id'])){
        $userID = $_SESSION['user_id'];
    }
    $tenkhoahoc = $_GET['tendv'];
    $sql = "SELECT * FROM animals WHERE TenKhoaHoc = '{$tenkhoahoc}'"; 
    $result=$conn->query($sql);
            if(mysqli_num_rows($result) === 0){
                echo "<p align='center'>Không tìm thấy yêu cầu trong hệ thống!!!</p>";
            }
            else{ 
                while($row = $result->fetch_assoc()){   
                    $sql2 = "DELETE FROM animals WHERE TenKhoaHoc = '{$tenkhoahoc}'"; 
                    $result2=$conn->query($sql2);
                    $sql3 = "DELETE FROM animals_update WHERE TenKhoaHoc = '{$tenkhoahoc}'"; 
                    $result3=$conn->query($sql3);
                }
                $sql2 = "SELECT * FROM animals_img WHERE TenKhoaHoc = '{$tenkhoahoc}'"; 
                $result2 = $conn->query($sql2);
                    if(mysqli_num_rows($result2) === 0){
                        echo "<p align='center'>Không tìm thấy yêu cầu trong hệ thống!!!</p>";
                    }
                    else{ 
                        while($row2 = $result2->fetch_assoc()){   
                            $sql4 = "DELETE FROM animals WHERE TenKhoaHoc = '{$tenkhoahoc}'"; 
                            $result4=$conn->query($sql4);
                            $sql5 = "DELETE FROM animals_update WHERE TenKhoaHoc = '{$tenkhoahoc}'"; 
                            $result5=$conn->query($sql5);
                            }
                    } 
                }
        header("Location: ../manager_page.php");                               
?>