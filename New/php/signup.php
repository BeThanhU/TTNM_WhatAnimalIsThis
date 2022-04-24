<?php
    
    session_start();
    include_once "connection.php";
    $fullname = mysqli_real_escape_string($conn, $_POST['fullname']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $confirm_password = mysqli_real_escape_string($conn, $_POST['confirm_password']);
    if(!empty($fullname) && !empty($username) && !empty($password)){
        if($password === $confirm_password){
                $sql = mysqli_query($conn, "SELECT * FROM users WHERE username = '{$username}'");
                if(mysqli_num_rows($sql) > 0){
                    echo "Tên đăng nhập - $username - đã tồn tại!";
                }else{
                    if(isset($_FILES['image'])){
                        $img_name = $_FILES['image']['name'];
                        $img_type = $_FILES['image']['type'];
                        $tmp_name = $_FILES['image']['tmp_name'];
                        
                        $img_explode = explode('.',$img_name);
                        $img_ext = end($img_explode);
        
                        $extensions = ["jpeg", "png", "jpg"];
                        if(in_array($img_ext, $extensions) === true){
                            $types = ["image/jpeg", "image/jpg", "image/png"];
                            if(in_array($img_type, $types) === true){
                                $time = time();
                                $new_img_name = $time.$img_name;
                                if(move_uploaded_file($tmp_name,"../images/".$new_img_name)){
                                    $encrypt_pass = md5($password);
                                    $insert_query = mysqli_query($conn, "INSERT INTO users (fullname, username, password, img, role)
                                    VALUES ('{$fullname}', '{$username}', '{$encrypt_pass}', '{$new_img_name}', 'user')");
                                    echo "success";
                                }
                            }
                            else{
                                echo "Chỉ nhận ảnh - jpeg, png, jpg";
                            }
                        }
                        else{
                            echo "Vui lòng chọn ảnh - jpeg, png, jpg";
                        }
                    }
                }
            }else{
                echo "Nhập lại mật khẩu không chính xác !";
            }
        }else{
            echo "Vui lòng nhập đầy đủ thông tin !";
        }
?>