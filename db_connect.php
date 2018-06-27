<?php

    session_start(); // memulai fungsi session


//konfigurasi ionic
    //http://stackoverflow.com/questions/18382740/cors-not-working-php
    if (isset($_SERVER['HTTP_ORIGIN'])) {
        header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }

    // Access-Control headers are received during OPTIONS requests
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
            header("Access-Control-Allow-Methods: GET, POST, OPTIONS");         

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
            header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

        exit(0);
    }

//    $localhost = "107.6.175.205";
    // $localhost = "localhost";
    // $username = "root";
    // $password = "";
    // $db_name = "kpu";

    $localhost = "localhost";
    $username = "mauldevt";
    $password = "k15kdS3Eh6";
    $db_name = "mauldevt_suarakami";

    //create connection
    $connect = mysqli_connect($localhost, $username, $password, $db_name);



    //check connection
    if($connect->connect_error) {
        die("connection failed : ". $connect->connect_error);
    } else {
        //  echo "Successfully Connected";
    }





 ?>
