<?php

    include 'db_connect.php';
  

    $postdata = file_get_contents("php://input");
    $judul = "";
    $konten ="";
    $kategori = "";
    $url = "";

    if (isset($postdata)) {
        $request = json_decode($postdata);
        $judul  = $request->judul;
        $konten   = $request->konten;
        $kategori = $request->kategori;
        $url = $request->url;

        $query = mysqli_quey($connect,"INSERT INTO video (judul, konten, kategori, url) VALUES ('$judul', '$konten', '$kategori', '$url') ");

           if($query){
        
                $data =array(
                    'message' => "Tambah POST Success!",
                    'status' => "200"
                );
            }
            else {
                $data =array(
                    'message' => "Tambah POST Failed!",
                    'status' => "404"
                ); 
            }
        echo json_encode($data);
    }
?>
