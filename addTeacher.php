

<?php

include("connection.php");
$status = "";
if(isset($_POST['new']) && $_POST['new']==1){
    $teach =$_REQUEST['teach'];
    $dept =$_REQUEST['dep'];
    $ins_query="insert into teacher values (NULL,'$teach','$dept')";
    mysqli_query($con,$ins_query)
    or die(mysql_error());
    header('location:teacher.php');
}
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
            <h1 class="main">admin</h1>
        </div> 
        <ul>
    
            <li><img src="./img/b2.png" alt=""> &nbsp;<span onclick="window.location.href='subject.php'">subjects</span> </li>
            <li><img src="./img/b2.png" alt="">&nbsp;<span onclick="window.location.href='student.php'">student</span>  </li>
            <li><img src="./img/b3.png" alt="">&nbsp;<span onclick="window.location.href='teacher.php'">teacher</span> </li>
            <li><img src="./img/b4.png" alt="">&nbsp;<span onclick="window.location.href='feedback.php'">feedback</span> </li>
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
              
                    </div> 
                    <table border="1" style="border-collapse:collapse;">
                        <thead>
                        <tr style="background-color:#f05264; color:white">
                   
                        <th><strong>Teacher Name</strong></th>
                        <th><strong>department Name</strong></th>
                        <th><strong>Edit</strong></th>
                        <th><strong>Delete</strong></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        session_start();
                        $sel_query="SELECT teacher.T_ID , teacher.T_name, teacher.dept_ID, department.dept_name FROM teacher,department
                        where teacher.dept_ID = department.dept_ID AND teacher.dept_ID = '$_SESSION[dept]'";
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

                        <div id="insert">
          
                            <form name="form" method="post" action=""> 
                            <input type="hidden" name="new" value="1" >
                            <tr >
                                <td></td>
                            <td id="tdadd"><input type="text" name="teach" placeholder="Enter a Teacher" id="add" style="border:0" required></td>
                            <td id="tdadd">
                            <select type="text" name="dep" id="add" style="border:0; width:50%; text-align:center" required >
                                    <option></option>
                                        <?php
                                        $result=mysqli_query($con, "SELECT * FROM `department`");
                                        if(mysqli_num_rows($result) > 0){
                                            while($row = mysqli_fetch_assoc($result)){
                                        ?>
                                        <option value="<?= $row['dept_ID']; ?>">
                                            <?= $row['dept_name']; ?>
                                        </option>
                                    <?php }
                                    } ?>
                                </select>          
                           </td>
                            <td id="tdadd"><button onclick="window.location.href='teacher.php'" style="visibility:hidden">Submit</button></td>
                        </tr>
                        
                            </form>
                            <p style="color:#FF0000;"><?php echo $status; ?></p>
                            </div>

                        </tbody>
                        </table>
                    

                  
          
                 </div>
                 </div>

    
        </div>
    </div>




</body>
</html>



















