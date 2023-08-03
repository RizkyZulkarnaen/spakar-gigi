<?php include "../config/connection.php" ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Penyakit Gigi | Hasil</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css?h=968c95ae82a7e6fe02981b61c16a231b">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Acme&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Advent+Pro&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Angkor&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Annie+Use+Your+Telescope&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Antic">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Anton&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Autour+One&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bakbak+One&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css?h=a0e894d2f295b40fda5171460781b200">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css?h=a0e894d2f295b40fda5171460781b200">
    <link rel="stylesheet" href="../assets/fonts/fontawesome5-overrides.min.css?h=a0e894d2f295b40fda5171460781b200">
    <link rel="stylesheet" href="../assets/css/Beautiful-Danger-Note-Callout.css?h=a8a18adc981a35361919d71e87ca5862">
    <link rel="stylesheet" href="../assets/css/Beautiful-Info-Note-Callout.css?h=1111bbf3c341ff9aff71ca70c71edf8e">
    <link rel="stylesheet" href="../assets/css/Beautiful-Success-Note-Callout.css?h=9c607c4f0bb78a9bbe310869ac313da3">
    <link rel="stylesheet" href="../assets/css/Beautiful-Warning-Note-Callout.css?h=137d34d6ab7070ff8b4f43e29e9ae787">
    <link rel="stylesheet" href="../assets/css/best-carousel-slide.css?h=a165dd165f284e61a6c89c2c85f16e86">
    <link rel="stylesheet" href="../assets/css/Conten.css?h=6bb4676b5f44520f0de6be5314f5ee12">
    <link rel="stylesheet" href="../assets/css/Custom-Checkbox.css?h=f228643d169a9b238719f1d783eb491f">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="../assets/css/Navbar-Right-Links.css?h=befd8a398792e305b7ffd4a176b5b585">
    <link rel="stylesheet" href="../assets/css/Pretty-Footer.css?h=e3701357e9e8ffe6753611314222d361">
</head>

<body>
<div id="hasil">
        <div class="container" id="con-hasil">
            <h1 id="Dh1">Hasil Diagnosis !!</h1>       

<?php
if(isset($_POST['proses']))  
{
    $hsl = $_POST['cek'];
    $all = implode(' ',$hsl);
    echo $all;
    $sql = mysqli_query($conn, "SELECT penyakit.*, solusi.*, rule.* 
                                FROM penyakit, solusi, rule  
                                WHERE rule.maka=penyakit.kode AND
                                rule.jika='$all' AND penyakit.kode=solusi.kd_penyakit ");
			if(mysqli_num_rows($sql) == 0){
                header('location:diagnosa/diagnosa.php?error=Tidak ditemukan penyakit gigi dengan gejala tersebut.');		
                    }else{
                $row = mysqli_fetch_array($sql);
			}
}     

?>
        <div class="col">
            <div class="beautiful bs-callout bs-callout-warning">
        <h4>Gejala</h4>
<?php 
$no = -1;
while ($no <= 37){

    $no++;

    if(isset($hsl[$no])){
        $sql1 = mysqli_query($conn, "SELECT * FROM  gejala WHERE kode='$hsl[$no]'");
        $row1 = mysqli_fetch_array($sql1);
            echo "<li>$row1[gejala]</li>";
            } else {echo "";}

}

?>
        
            </div>
        </div>


        <div class="col"><div class="beautiful bs-callout bs-callout-danger">
    <h4>Penyakit</h4>
    <h2 style="color: #343a40; font-family: 'Lato';">
        <?php echo $row['penyakit'];?> 
    </h2>
</div></div>
                
            <!-- <div class="col"><div class="beautiful bs-callout bs-callout-success"> -->
    <!-- <h4>Pencegahan</h4>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fermentum 
        gravida tellus, tincidunt ornare odio blandit vitae. Morbi tincidunt libero in 
        metus dignissim, non interdum mi pulvinar. 
    </p>
</div></div>
            <div class="col"><div class="beautiful bs-callout bs-callout-info">
    <h4>Pengobatan</h4>
    <p>
        <?php echo $row['solusi'];?> 
    </p>
</div></div> -->
        <div class="col" id="but" style="margin-top: 20px;">
              <a class="btn" href="diagnosa.php" > Kembali <a/>
        </div>
        </div>
        
    </div>
    <script src="../assets/bootstrap/js/bootstrap.min.js?h=5488c86a1260428f0c13c0f8fb06bf6a"></script>
    <script src="../assets/js/bs-init.js?h=cd759cd84d0f5ce08e477217e1c37697"></script>
</body>

</html>