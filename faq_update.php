<?php
    include 'db_connect.php';

   $id = $_GET['id'];

   $postdata = file_get_contents("php://input");
   $pertanyaan = "";
   $jawaban = "";

   if (isset($postdata)) {
       $request = json_decode($postdata);
       $pertanyaan = $request->pertanyaan;
       $jawaban = $request->jawaban;

        $q = mysqli_query($connect, "UPDATE faq SET pertanyaan='$pertanyaan', jawaban='$jawaban' WHERE id='$id'");

        if($q){
            $data =array(
                'message' => "Update Data FAQ Succses",
                'status' => "200"
            );    
        }
        else{
            $data =array(
                'message' => "Update Data FAQ Failed",
                'status' => "404"
            );    
        }
        
    }
    echo json_encode($data);

?>