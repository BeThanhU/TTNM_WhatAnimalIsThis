<?php
    session_start();
    include_once "connection.php";
    if(isset($_SESSION['user_id'])){
        $userID = $_SESSION['user_id'];
    }
    $tenkhoahoc = mysqli_real_escape_string($conn, $_POST['tenkhoahoc']);
    $tentiengviet = mysqli_real_escape_string($conn, $_POST['tentiengviet']);
    $tendiaphuong = mysqli_real_escape_string($conn, $_POST['tendiaphuong']);
    $gioi = mysqli_real_escape_string($conn, $_POST['gioi']);
    $nganh = mysqli_real_escape_string($conn, $_POST['nganh']);
    $lop = mysqli_real_escape_string($conn, $_POST['lop']);
    $bo = mysqli_real_escape_string($conn, $_POST['bo']);
    $ho = mysqli_real_escape_string($conn, $_POST['ho']);
    $hinhthai = mysqli_real_escape_string($conn, $_POST['hinhthai']);
    $sinhthai = mysqli_real_escape_string($conn, $_POST['sinhthai']);
    $giatri = mysqli_real_escape_string($conn, $_POST['giatri']);

    $sql = "SELECT * FROM animals WHERE TenKhoaHoc = '{$tenkhoahoc}'";
        $result=$conn->query($sql);
                if(mysqli_num_rows($result) === 0){
                    echo "<p align='center'>Không tìm thấy yêu cầu trong hệ thống!!!</p>";
                }
                else{ 
                        while($row = $result->fetch_assoc()){   
                            $update_query = mysqli_query($conn, "UPDATE animals 
                            SET TenTiengViet = '{$tentiengviet}',
                            TenDiaPhuong = '{$tendiaphuong}',
                            Gioi = '{$gioi}',
                            Nganh = '{$nganh}',
                            Lop = '{$lop}',
                            Bo = '{$bo}',
                            Ho = '{$ho}',
                            HinhThai = '{$hinhthai}',
                            SinhThai = '{$sinhthai}',
                            GiaTri = '{$giatri}'
                            WHERE TenKhoaHoc = '{$tenkhoahoc}'");
                        }
                        $total_count = count($_FILES['image']['name']);
                            for( $i=0 ; $i < $total_count ; $i++ ) {
                                $tmpFilePath = $_FILES['image']['tmp_name'][$i];
                                $newFilePath = "../img/".$_FILES['image']['name'][$i];
                                $newFilePath2 = "img/".$_FILES['image']['name'][$i];
                                    if(move_uploaded_file($tmpFilePath, $newFilePath)) {                        
                                        $update_query_img = mysqli_query($conn, "UPDATE animals_img 
                                        SET HinhAnh = '{$newFilePath2}'
                                        WHERE TenKhoaHoc = '{$tenkhoahoc}'");                                               
                        }                               
                    }
                }
            echo "success" ;                                
        
?>