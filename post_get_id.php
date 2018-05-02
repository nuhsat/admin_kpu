<?php
    include 'db_connect.php';

    $id = $_GET['id'];

    $q = mysqli_query($connect, "SELECT * FROM post WHERE id='$id'");

    while($result =mysqli_fetch_assoc($q)){
            $result_set[]=$result;
        }
    $data =array(
        'message' => "Get Data POST Succses",
        'data' => $result_set,
        'status' => "200"
    );
    echo json_encode($data);

?>