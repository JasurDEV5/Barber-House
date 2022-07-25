<?php

$con=new mysqli('localhost', 'root', '', 'crudoperation');

if($con){
    echo "connected successfull";
}else{
    die(mysqli_error($con));
}

?>