$con = new mysqli("localhost","root","","db_animals");
    if ($con -> connect_errno) {
        echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
    exit();
}