<?php      
    // $host = "localhost";  
    // $user = "root";  
    // $password = '';  
    // $db_name = "feed";  
    $host = "sql102.epizy.com";  
    $user = "epiz_31665495";  
    $password = 'yBxyLAz8KI3';  
    $db_name = "epiz_31665495_feed";  
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_errno()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }  
?>