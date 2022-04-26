<?php
    session_start();
    if(isset($_SESSION['user_id'])){
        include_once "connection.php";
        $logout_id = mysqli_real_escape_string($conn, $_GET['logout_id']);
        if(isset($logout_id)){
            session_unset();
            session_destroy();
            header("location: ../login_page.php");
            }
        }else{
            header("location: ../users_page.php");
        }
?>