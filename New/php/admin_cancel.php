<?php
    session_start();
    include_once "connection.php";
    if(isset($_SESSION['user_id'])){
        $userID = $_SESSION['user_id'];
    }
    $tenkhoahoc = mysqli_real_escape_string($conn, $_POST['tenkhoahoc']);
    $update_query = mysqli_query($conn, "UPDATE animals_update SET TrangThai = 'Từ chối' WHERE TenKhoaHoc = '$tenkhoahoc'");
    $update_query2 = mysqli_query($conn, "UPDATE animals_update_img SET TrangThai = 'Từ chối' WHERE TenKhoaHoc = '$tenkhoahoc'");

    echo "success";
?>