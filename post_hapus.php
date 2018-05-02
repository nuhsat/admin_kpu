<?php
    include 'db_connect.php';

   $id = $_GET['id'];

    $q = mysqli_query($connect, "DELETE FROM post WHERE id='$id'");

    $data =array(
        'message' => "Delete Data Produkku Succses",
        'status' => "200"
    );
    echo json_encode($data);

?>