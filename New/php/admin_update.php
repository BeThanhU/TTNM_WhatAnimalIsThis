<?php
    session_start();
    include_once "connection.php";
    if(isset($_SESSION['user_id'])){
        $userID = $_SESSION['user_id'];
    }
    $tenkhoahoc = mysqli_real_escape_string($conn, $_POST['tenkhoahoc']);
    $sql = mysqli_query($conn, "SELECT * FROM animals WHERE TenKhoaHoc = '{$tenkhoahoc}'");
        if(mysqli_num_rows($sql) > 0){
            echo "Động vật đã tồn tại!";
        }
         else{
            $sql = "SELECT * FROM animals_update WHERE TenKhoaHoc = '".$tenkhoahoc."'";
                $result=$conn->query($sql);
                if(mysqli_num_rows($result) == 0){
                    echo "<p align='center'>Không tìm thấy yêu cầu trong hệ thống!!!</p>";
                }
                else{ 
                        while($row = $result->fetch_assoc()){                        
                            $insert_query = mysqli_query($conn, "INSERT INTO animals (NgayCapNhat, TenKhoaHoc, TenTiengViet, 
                            TenDiaPhuong, Gioi, Nganh, Lop, Bo, Ho, HinhThai, SinhThai, GiaTri, 
                            BaoTonIUCN, BaoTonVN, BaoTon32, BaoTonCITES, PhanBo, TinhTrang, 
                            SinhCanh, DiaDiem, NgayThuMau, NguoiThuMau)
                            VALUES ('".$row['NgayCapNhat']."',
                                    '".$row['TenKhoaHoc']."',
                                    '".$row['TenTiengViet']."',
                                    '".$row['TenDiaPhuong']."',
                                    '".$row['Gioi']."',
                                    '".$row['Nganh']."',
                                    '".$row['Lop']."',
                                    '".$row['Bo']."',
                                    '".$row['Ho']."',
                                    '".$row['HinhThai']."',
                                    '".$row['SinhThai']."',
                                    '".$row['GiaTri']."',
                                    '".$row['BaoTonIUCN']."',
                                    '".$row['BaoTonVN']."',
                                    '".$row['BaoTon32']."',
                                    '".$row['BaoTonCITES']."',
                                    '".$row['PhanBo']."',
                                    '".$row['TinhTrang']."',
                                    '".$row['SinhCanh']."',
                                    '".$row['DiaDiem']."',
                                    '".$row['NgayThuMau']."',
                                    '".$row['NguoiThuMau']."')");
                            $update_query = mysqli_query($conn, "UPDATE animals_update SET TrangThai = 'Đã duyệt' WHERE TenKhoaHoc = '".$row['TenKhoaHoc']."'");
                        }
                        $sql2 = "SELECT * FROM animals_update_img WHERE TenKhoaHoc = '".$tenkhoahoc."'";
                        $result2=$conn->query($sql2);
                        while($row2 = $result2->fetch_assoc()){    
                            $insert_query = mysqli_query($conn, "INSERT INTO animals_img (TenKhoaHoc, HinhAnh) 
                                                                VALUES ('".$row2['TenKhoaHoc']."','".$row2['HinhAnh']."')
                                                                ");
                            $update_query2 = mysqli_query($conn, "UPDATE animals_update_img SET TrangThai = 'Đã duyệt' WHERE TenKhoaHoc = '".$row2['TenKhoaHoc']."'");
                        }
                        echo "success";
                                            
                    }

        }
                                 
        
?>