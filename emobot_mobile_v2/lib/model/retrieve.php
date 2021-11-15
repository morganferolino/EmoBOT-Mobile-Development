<?php
   
   $db = mysqli_connect('localhost', 'root', '', 'webemobot');
    if(!$db) {
        echo "Database connection failed";
    }
    
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $sql = "SELECT * FROM emobot_person WHERE username = '".$username."' AND password = '".$password."'";
    $result = mysqli_query($db, $sql);
    $count = mysqli_num_rows($result);
    $db_data = array();
 
    if($result->num_rows == 1){
        while($row = $result->fetch_assoc()){
            $db_data[] = $row;
        }
        // Send back the complete records as a json.
        echo json_encode($db_data);
    } else {
        // else returns or echos a string containing error.
        echo json_encode("Error");
    }
 
?>