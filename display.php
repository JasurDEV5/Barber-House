<?php 
include 'connect.php'; ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Crud Operation</title>
</head>
<body>
   <div class="container">
        <button type="button" class="btn btn-primary my-5"><a href="user.php" class="text-light">Add User</a></button>
        <table class="table">
                    <thead>
                        <tr>
                        <th scope="col">Sl no</th>
                        <th scope="col">Name</th>
                        <th scope="col">phone</th>
                        <th scope="col">time</th>
                        <th scope="col">Operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $sql="Select * from `crud`";
                            $result=mysqli_query($con,$sql);
                            if($result){
                                while($row=mysqli_fetch_assoc($result)) {
                                    $id=$row['id'];
                                    $name=$row['name'];
                                    $mobile=$row['phone'];
                                    $time=$row['time'];
                                    echo' <tr>
                                    <th scope="row">'.$id.'</th>
                                    <td>'.$name.'</td>
                                    <td>'.$mobile.'</td>
                                    <td>'.$time.'</td>
                                    <td> 
                                    <button class="btn btn-danger"><a class="text-light" href="delete.php? deleteid='.$id.'">Delete</a></button>
                                    </td>
                                    </tr>';
                                }
                            }
                                    

                        ?>
                    </tbody>
        </table>
   </div> 
</body>
</html>