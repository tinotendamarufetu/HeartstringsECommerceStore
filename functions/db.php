<?php 
 
    $con = mysqli_connect("localhost","root","","heartstrings_apparel") or die("Connection Failed");

    if(!$con)
    {
        echo "Connection Failed!";
        exit();
    }