<?php
                    $con = new mysqli("localhost","root","","animals");
                    if ($con -> connect_errno) {
                        echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                        exit();
                    }
                    $con->set_charset("utf8");
                    $kq=$_GET['kqtk'];
                    $sql = "SELECT * FROM animals WHERE (TentiengViet LIKE '%".$kq."%') OR (Tendiaphuong LIKE '%".$kq."%')
                    OR (Tenkhoahoc LIKE '%".$kq."%')";
                    $sql1 = "SELECT * FROM animals WHERE (TentiengViet LIKE '%".$kq."%') OR (Tendiaphuong LIKE '%".$kq."%')";
                    $sql2 = "SELECT * FROM animals WHERE (Tenkhoahoc LIKE '%".$kq."%')";
                    $result=$con->query($sql);
                    $result1=$con->query($sql1);
                    $result2=$con->query($sql2);
                    if(mysqli_num_rows($result) == 0){
                        echo "<p align='center'>Không tìm thấy động vật trong hệ thống!!!</p>";
                    }
                    else{ 
                        if(mysqli_num_rows($result1) != 0){
                            echo "<br><h2>Danh sách động vật tìm thấy theo tên tiếng Việt hoặc tên địa phương</h2><br>";
                            echo "<table align='center'>";
                            while($row = $result1->fetch_assoc()){
                                echo "<tr>
                                <td>
                                    <img width='250px' src='https://drive.google.com/uc?export=view&id=".$row['Hinhanh1']."'></img>
                                </td>
                                <td>
                                    <a href='./details.php?tendv=".$row['TentiengViet']."'>".$row['TentiengViet']."</a>
                                    <br>
                                    Tên địa phương: ".$row['Tendiaphuong']."
                                    <br>
                                    ".$row['Tenkhoahoc']."
                                </td>			
                                </tr>";                
                            }
                            echo "</table>"; 
                        }
                        if(mysqli_num_rows($result2) != 0){
                            echo "<br><h2>Danh sách động vật tìm thấy theo tên khoa học</h2><br>";
                            echo "<table align='center'>";
                            while($row = $result2->fetch_assoc()){
                                echo "<tr>
                                <td>
                                    <img width='250px' src='https://drive.google.com/uc?export=view&id=".$row['Hinhanh1']."'></img>
                                </td>
                                <td>
                                <a href='./details.php?tendv=".$row['Tenkhoahoc']."'>".$row['Tenkhoahoc']."</a>
                                    <br>
                                    ".$row['TentiengViet']." 
                                    <br>
                                    Tên địa phương: ".$row['Tendiaphuong']."
                                    </td>			
                                </tr>";
                            }
                            echo "</table>"; 
                        }     
                    }
                ?>