<?php require 'ayar.php';  

session_start();

// session_destroy();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Alışveriş Sepeti | Çelik Ayakkabı</title>
    
    <link rel="stylesheet" href="../css/style.css">
    
    <script src="https://kit.fontawesome.com/5cb94af1ab.js" crossorigin="anonymous"></script>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
    
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="owl/owl.carousel.min.css">
    
    <link rel="stylesheet" href="owl/owl.theme.default.min.css">
    
    <script src="jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <script src="bootstrap/js/bootstrap.js"></script>
    
</head>
<body>
    
    <section id="menu">
        <div id="logo">Çelik Ayakkabı</div>
        <nav>
            <a href="../index.php"><i class="fas fa-home ikon"></i>Anasayfa</a>
            <a href="../sporayakkabi.php"><i class="fas fa-capsules ikon"></i>Spor Ayakkabı</a>
            <a href="../gunlukayakkabi.php"><i class="fas fa-capsules ikon"></i>Günlük Ayakkabı</a>
            <a href="../botvecizme.php"><i class="fas fa-capsules ikon"></i>Bot ve Çizmeler</a>
            <a href="../hakkimizda.php"><i class="fas fa-info-circle ikon"></i>Hakkımızda</a>
            <a href="../iletisim.php"><i class="fas fa-file-signature"></i>İletişim</a>
            <a href="index.php"><i class="fas fa-shopping-basket"></i>Sepet</a>
            
        </nav>
    </section>
    
      <br> <br> 
      
      <div class="container" style="width:41%;"> 
      <h3 align="center">Alışveriş Sepeti</h3>
      <br> 
      <?php 
        
          $query = $db->query("select * from urunler order by id desc",PDO::FETCH_OBJ);
          
             foreach($query as $row){
             
                 ?>
                 <div class="col-md-4"> 
                 <form action="islem.php?islem=ekle&id=<?=$row->id;?>" method="post"> 
                 <div style="border:1px solid #333;background:##ddd; padding:15px; border-radius:10px;"
                      align="center"> 
                 <img src="../img/<?=$row->resim;?>" class="img-responsive" alt=""><br>
                 <h4 class="text-info"><?=$row->isim;?></h4>
                 <h4 class="text-danger"><?=$row->fiyat;?></h4>
                 <input type="text" style="width:60%;" name="miktar" class="form-control" value="1">
                 <input type="hidden" name="isim" value="<?=$row->isim;?>">
                 <input type="hidden" name="fiyat" value="<?=$row->fiyat;?>">
                 <button type="submit" style="margin-top:5px;" name="ekle" class="btn btn-success">Urun ekle</button>
                 </div>
                 </form>
                 </div>
                 <?php
                 
             
             }
          
      ?>
      <div style="clear:both"></div><br>
      <h3>Sepetteki Urunler</h3>
      <div class="table-responsive"> 
        <table class="table table-bordered"> 
        <tr> 
        <td width="30%">urun isim</td>
        <td width="10%">miktar</td>
        <td width="20%">fiyat</td>
        <td width="20%">toplam</td>
        <td width="5%">işlem</td>
        </tr>
        <?php 
           
            
            if(!empty($_SESSION["sepet"])){
            
                  $toplam = 0;
                
                foreach($_SESSION["sepet"] as $anahtar => $deger){
                
                       
                    ?>
                    <tr> 
                    <td><?=$deger["urun_isim"];?></td>
                    <td><?=$deger["urun_miktar"];?></td>
                    <td><?=$deger["urun_fiyat"];?></td>
                    <td><?=number_format($deger["urun_fiyat"] * $deger["urun_miktar"],2);?></td>
                    <td><a href="islem.php?islem=sil&id=<?=$deger["urun_id"];?>"><span style="font-size:15px;" class="text-danger">Kaldır</span></a></td>
                    </tr>
                    <?php
                    
                    $toplam = $toplam + ($deger["urun_miktar"] * $deger["urun_fiyat"]);
                
                }
                
                ?>
                <tr> 
                <td align="right" colspan="3">Toplam</td>
                <td align="right"><?=number_format($toplam,2);?></td>
                <td></td>
                </tr>
                <?php
                
            
            }
            
         ?>
        </table>
      </div>
      </div>
     
</body>
</html>






























