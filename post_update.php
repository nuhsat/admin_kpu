<?php
    include 'db_connect.php';

   $id = $_GET['id'];

   $postdata = file_get_contents("php://input");
   $judul = "";
   $konten = "";
   $kategori = "";
   $jenis = "";
   if (isset($postdata)) {
       $request = json_decode($postdata);
       $judul = $request->judul;
       $konten = $request->konten;
       $kategori = $request->kategori;
       $jenis = $request->jenis;

        $q = mysqli_query($connect, "UPDATE post SET judul='$judul', konten='$konten', kategori='$kategori', jenis='$jenis' WHERE id='$id'");

        if($q){
            $data =array(
                'message' => "Update Data Produkku Succses",
                'status' => "200"
            );    
        }
        else{
            $data =array(
                'message' => "Update Data Produkku Failed",
                'status' => "404"
            );    
        }
        
    }
    echo json_encode($data);

?>