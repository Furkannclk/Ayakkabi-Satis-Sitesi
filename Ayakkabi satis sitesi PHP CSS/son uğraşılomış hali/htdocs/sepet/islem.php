<?php 

 
session_start();


   if(isset($_POST["ekle"])){
   
   
       if(isset($_SESSION["sepet"])){
       
            $dizi_id = array_column($_SESSION["sepet"],"urun_id");
           
           if(!in_array($_GET["id"],$dizi_id)){
           
                $count = count($_SESSION["sepet"]);
               
                
               
                 $ekle = [
           
               "urun_id" => $_GET["id"],
               "urun_isim" => $_POST["isim"],
               "urun_fiyat" => $_POST["fiyat"],
               "urun_miktar" => $_POST["miktar"]
               
           
           ];
           
            $_SESSION["sepet"][$count] = $ekle;  
               
           
               header("location:index.php");
               
           
           }else {
           
               header("location:index.php");
           
           }
           
          
           
       
       }else {
       
           $ekle = [
           
               "urun_id" => $_GET["id"],
               "urun_isim" => $_POST["isim"],
               "urun_fiyat" => $_POST["fiyat"],
               "urun_miktar" => $_POST["miktar"]
               
           
           ];
           
            $_SESSION["sepet"][0] = $ekle;
       
            header("location:index.php");
           
       }
   
   }

    if(isset($_GET["islem"])){
    
    
        if($_GET["islem"] == "sil"){
        
           
            foreach($_SESSION["sepet"] as $anahtar => $deger){
            
                
                if($_GET["id"] == $deger["urun_id"]){
                
                    
                    unset($_SESSION["sepet"][$anahtar]);
                
                      header("location:index.php");
                
                }
                
            
            }
        
        
        }
        
    
    }   






?>