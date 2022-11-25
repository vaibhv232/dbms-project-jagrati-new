<style>
 
 table{
  table-layout: fixed;
  width: 600px;  
}
td{
    text-align: center;
    font-size: 1.3em;
}

h1{
    font-family: 'Bebas Neue', cursive;
    font-size: 48px;
    letter-spacing: 1px;
    color: #FF6D28;
    text-align: center;
    padding-top: 10px;
    padding-bottom: 10px;
}
.btn {
    font-family: verdana;
    color: white !important;
    font-size: 17px;
    box-shadow: 1px 1px 1px #BEE2F9;
    padding: 10px 25px;
    border-radius: 6px;
    border: 0.5px none #3866A3;
    background: #20BA25;
    align-self: center;
    width: 15%;
    margin-top: 40px;
  }
  .btn:hover {
    color: #444344 !important;
    background: #29A825;
    cursor:pointer;
  }
  
 
</style>


<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost:3307", "root", "", "jagrati");
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
else {

    if(!empty($_POST['present'])){
        foreach($_POST['present'] as $checked){
          //echo $checked."</br>";
          $sql1 = "UPDATE attendance set p_count = p_count+ 1 where id = $checked";
          $result = mysqli_query($link, $sql1);

        }
    }
    $class = $_POST['class'];
    
    $sql2 = "SELECT student.name ,student.id, attendance.p_count from student, attendance where student.id= attendance.id and student.class = $class";
    //$result2 =  $result = mysqli_query($link, $sql2);
    if($result2 = mysqli_query($link, $sql2)){
        if(mysqli_num_rows($result2) > 0){
            echo"<center>";
            echo"<h1>Attendance Details</h1>";
            echo "<table>";
                echo "<tr>";
                    echo "<th>id</th>";
                    echo "<th>name</th>";
                    echo "<th>Presence Count</th>";
    
                echo "</tr>";
            //     $id = array();
            // echo "<form action = 'mark.php' method='POST'>
            // <input hidden name='class' value=".$class." />";
            while($row = mysqli_fetch_array($result2)){
                echo "<tr>";
                    echo "<td>" . $row['id'] . "</td>";
                    echo "<td>" . $row['name'] . "</td>";
                    echo "<td>" . $row['p_count'] . "</td>";
                    
                    
                echo "</tr>";
            }
            echo "</table>";
            echo"</center>";
            //echo '<input type="submit"></form>';
            // Free result set
            mysqli_free_result($result2);
        } else{
            echo "No records matching your query were found.";
        }
    } else{
        echo "ERROR: Could not able to execute $sql2. " . mysqli_error($link);
    }
     

}
?>