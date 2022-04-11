<?php 
    session_start();
    include_once "connection.php";
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    if(!empty($username) && !empty($password)){
        $sql = mysqli_query($conn, "SELECT * FROM users WHERE username = '{$username}'");
        if(mysqli_num_rows($sql) > 0){
            $row = mysqli_fetch_assoc($sql);
            $user_pass = md5($password);
            $enc_pass = $row['password'];
            if($user_pass === $enc_pass){
                    $_SESSION['user_id'] = $row['user_id'];
                    echo "success";
            }else{
                echo "Tài khoản hoặc mật khẩu không chính xác !";
            }
        }else{
             echo "Tài khoản hoặc mật khẩu không chính xác !";
        }
    }else{
        echo "Hãy nhập đầy đủ thông tin !";
    }
?>