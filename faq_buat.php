<?php

    include 'db_connect.php';
  

    $postdata = file_get_contents("php://input");
    $pertanyaan = "";
    $jawaban ="";
   
    if (isset($postdata)) {
        $request = json_decode($postdata);
        $pertanyaan  = $request->pertanyaan;
        $jawaban   = $request->jawaban;

        $query = mysqli_quey($connect,"INSERT INTO faq (pertanyaan, jawaban) VALUES ('$pertanyaan', '$jawaban') ");

           if($query){
        
                $data =array(
                    'message' => "Tambah FAQ Success!",
                    'status' => "200"
                );
            }
            else {
                $data =array(
                    'message' => "Tambah FAQ Failed!",
                    'status' => "404"
                ); 
            }
        echo json_encode($data);
    }
?>
