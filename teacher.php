<?php

include("connection.php");
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link rel="stylesheet" href="adminStyle.css">
    <title>Admin Panel</title>



</head>
<body> 
    <div class="side-menu">
        <div class="brand-name">
            <h1 class="main">admin panel</h1>
        </div> 
        <ul>
        
            <li><img src="./img/b2.png" alt=""> &nbsp;<span onclick="window.location.href='subject.php'">subjects</span> </li>
            <li><img src="./img/b2.png" alt="">&nbsp;<span onclick="window.location.href='student.php'">student</span>  </li>
            <li><img src="./img/b11.png" alt="">&nbsp;<span onclick="window.location.href='teacher.php'">teacher</span> </li>
            <!-- <li><img src="./img/b4.png" alt="">&nbsp;<span onclick="window.location.href='feedback.php'">feedback</span> </li> -->
            <li><img src="./img/b4.png" alt="">&nbsp;<span onclick="window.location.href='totalavg.php'">Total Average</span> </li>
        </ul>
    </div> 
    <div class="container">
        <div class="header">
            <div class="nav">
                <div class="search">
                    <h1>Teachers</h1>
                </div> 
                
            </div>
        </div> 
        <div class="contact">

            <div class="contact-2"> 
                <div class="recent-payments">
                    <div class="title">
                   
                        <a href="addteacher.php" class="btn" id="clc">Add new Teacher</a>
                    </div> 
                    <table border="1" style="border-collapse:collapse;">
                        <thead>
                        <tr style="background-color:#f05264; color:white">
              
                        <th><strong>teacher Name</strong></th>
                        <th><strong>Department Name</strong></th>
                        <th><strong>Edit</strong></th>
                        <th><strong>Delete</strong></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        session_start();
                        $sel_query="SELECT teacher.T_ID,teacher.T_name, department.dept_name from teacher,department
                        WHERE teacher.dept_ID = department.dept_ID AND teacher.dept_ID = '$_SESSION[dept]'";
                        $result = mysqli_query($con,$sel_query);
                        while($row = mysqli_fetch_assoc($result)) { ?>

                     
                        <td align="center"><?php echo $row["T_name"]; ?></td>
                        <td align="center"><?php echo $row["dept_name"]; ?></td>
                        <td align="center">
                        <a href="editTeacher.php?tid=<?php echo $row["T_ID"]; ?>">Edit</a>
                        </td>
                        <td align="center">
                        <a href="deleteTeacher.php?tid=<?php echo $row["T_ID"]; ?>">Delete</a>
                        </td>
                        </tr>
                      <?php } ?>


                        </tbody>
                        </table>
                    

                  
          
                 </div>
                 </div>

    
        </div>
    </div>




</body>
</html>