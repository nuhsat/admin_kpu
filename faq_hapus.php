<?php
    include 'db_connect.php';

   $id = $_GET['id'];

    $q = mysqli_query($connect, "DELETE FROM faq WHERE id='$id'");

    $data =array(
        'message' => "Delete FAQ Succses",
        'status' => "200"
    );
    echo json_encode($data);

?>