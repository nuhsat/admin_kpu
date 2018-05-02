<?php

    include 'db_connect.php';
  

    $postdata = file_get_contents("php://input");
    $judul = "";
    $konten ="";
    $kategori = "";
    $jenis = "";

    if (isset($postdata)) {
        $request = json_decode($postdata);
        $judul  = $request->judul;
        $konten   = $request->konten;
        $kategori = $request->kategori;
        $jenis = $request->jenis;

        $query = mysqli_quey($connect,"INSERT INTO post (judul, konten, kategori, jenis) VALUES ('$judul', '$teks', '$kategori', '$jenis') ");

           if($query){
        
                $data =array(
                    'message' => "Tambah anak Success!",
                    'status' => "200"
                );
            }
            else {
                $data =array(
                    'message' => "Tambah anak Failed!",
                    'status' => "404"
                ); 
            }
        echo json_encode($data);
    }
?>
