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
$class = $_POST['class'];

 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt select query execution
$sql = "SELECT id, name FROM  student where  class = $class ";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo"<center>";
        echo"<h1>Take Attendance</h1>";
        echo "<table>";
            echo "<tr>";
                echo "<th>ID</th>";
                echo "<th>Name</th>";
                echo "<th>Mark Presence</th>";

            echo "</tr>";
            $id = array();
        echo "<form action = 'mark.php' method='POST'>
        <input hidden name='class' value=".$class." />";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['name'] . "</td>";
                
                echo '<td><input type= "checkbox" name ="present[]" value = "'.$row['id'].'" ></td>';
            echo "</tr>";
        }
        echo "</table>";
        
        echo '<input type="submit" class="btn" ></form>';
        echo "</center>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
