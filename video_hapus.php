<?php
    include 'db_connect.php';

   $id = $_GET['id'];

    $q = mysqli_query($connect, "DELETE FROM video WHERE id='$id'");

    $data =array(
        'message' => "Delete Video Succses",
        'status' => "200"
    );
    echo json_encode($data);

?>