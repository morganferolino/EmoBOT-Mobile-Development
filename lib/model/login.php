<?php
    header("Content-type: application/json; charset=utf-8");

    $db = mysqli_connect('localhost', 'root', '', 'webemobot');
    if(!$db) {
        echo "Database connection failed";
    }
    echo "here";
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    //$sql = "SELECT * FROM emobot_person WHERE username = '".$username."' AND password = '".$password."'";
    $sql = "SELECT * FROM emobot_person";
    $result = mysqli_query($db, $sql);
    $count = mysqli_num_rows($result);
    echo $count;
    if($count >= 1) {
        echo json_encode("Success");
    } else {
        echo json_encode("Error");
    }
?>