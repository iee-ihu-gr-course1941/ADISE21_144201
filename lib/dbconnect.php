<?php
$host='localhost';
$db = 'moutzouris';
require_once "db_upass.php";

$user=$DB_USER;
$pass=$DB_PASS;
$name="";
$errors = array(); 


if(gethostname()=='users.iee.ihu.gr') {
	$mysqli = new mysqli($host, $user, $pass, $db,null,'/home/student/it/2014/it144201/mysql/run/mysql.sock');
} else {
    $pass=null;
        $mysqli = new mysqli($host, $user, $pass, $db);
        
}

if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . 
    $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

if(isset($_POST['reg_player'])){
    $name = $_POST['username'];

    if (empty($name)) { array_push($errors, "Username is required"); }

    $user_check_query = "SELECT * FROM players WHERE username='$name' LIMIT 1";
    $result = $mysqli->query($user_check_query);
    $user = mysqli_fetch_assoc($result);
    if ($user) { // if user exists
        if ($user['username'] === $name) {
          array_push($errors, "Username already exists");
        }
    }


if (count($errors) == 0) {
 $query = "INSERT INTO players (username)
            VALUES('$name')";

            $result = $mysqli->query($query);
            $_SESSION['success'] = "You are now logged in";
            header('location: register.php');
            
}   
             
}
?>
