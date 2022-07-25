<?php
include 'connect.php';
if(isset($_POST['submit'])){
    $name=$_POST['name'];
    $phone=$_POST['phone'];
    $time=$_POST['time'];

    $sql="insert into `crud`(name, phone, time)
    values('$name', '$phone', '$time')";
    $result=mysqli_query($con,$sql);
    if($result){
        echo "Data inserted successfully";
    }else{
        die(mysqli_error($con));
    }
}

?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Register</title>
  </head>
  <body>
    <div class="container">
    <h1>Hello, Wellcome!</h1>
        <div class="row">
            <div class="col-lg-6">
                <form method="post">
                    <div class="mb-3">
                        <label class="form-label">User name</label>
                        <input type="text" name="name" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">User Phone</label>
                        <input type="number" name="phone" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Date/Time</label>
                        <input type="datetime-local" name="time" class="form-control">
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <div class="container">
    <h1 class="text-danger text-center">Iltimos navbat olayotgningizda pastdagi tabloga etibor bering</h1>
        <table class="table">
                    <thead>
                        <tr>
                        <th scope="col">Sl no</th>
                        <th scope="col">Name</th>
                        <th scope="col">phone</th>
                        <th scope="col">time</th>
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
                                    </tr>';
                                }
                            }
                                    
        
                        ?>
                    </tbody>
        </table>

    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>