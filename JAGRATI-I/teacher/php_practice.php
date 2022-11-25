<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost:3307", "root", "", "jagrati");
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
else{
    echo"hello";
    $for_query = '';
    $arr = array();
    if(!empty($_POST["id"]))
    {
        foreach($_POST["id"] as $id)
        {
            array_push($arr, $id);
            $query = "UPDATE attendance set p_count= p_count+1 where id=$id";
            if($result = mysqli_query($link, $sql)){
                echo $id;
            }
            
        }
    }
}


?>