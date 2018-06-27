<?php
    include 'db_connect.php';

   $id = $_GET['id'];

   $postdata = file_get_contents("php://input");
   $judul = "";
   $konten = "";
   $url = "";

   if (isset($postdata)) {
       $request = json_decode($postdata);
       $judul = $request->judul;
       $konten = $request->konten;
       $kategori = $request->kategori;
       $url = $request->url;
       $sumber = $request->sumber;

        $q = mysqli_query($connect, "UPDATE post SET judul='$judul', konten='$konten', kategori='$kategori', url='$url', sumber='$sumber' WHERE id='$id'");

        if($q){
            $data =array(
                'message' => "Update Data POST Succses",
                'status' => "200"
            );    
        }
        else{
            $data =array(
                'message' => "Update Data POST Failed",
                'status' => "404"
            );    
        }
        
    }
    echo json_encode($data);

?>