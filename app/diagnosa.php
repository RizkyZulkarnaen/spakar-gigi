<?php include "../config/connection.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Penyakit Gigi | Diagnosa</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css?h=392579c542026f15ec029be03019d6d8">
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
    <link rel="stylesheet" href="../assets/css/best-carousel-slide.css?h=60182089d0d4b412023f5b0e8f5983d5">
    <link rel="stylesheet" href="../assets/css/Conten.css?h=eaf85eb7eed11619a68f6bb55dbe11f1">
    <link rel="stylesheet" href="../assets/css/Custom-Checkbox.css?h=f228643d169a9b238719f1d783eb491f">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="../assets/css/Navbar-Right-Links.css?h=befd8a398792e305b7ffd4a176b5b585">
    <link rel="stylesheet" href="../assets/css/Pretty-Footer.css?h=e3701357e9e8ffe6753611314222d361">
</head>

<body>
    <div id="top-navbar">
        <nav class="navbar navbar-light navbar-expand-md fixed-top py-3" style="background: #6998ab;">
            <div class="container-fluid"><a class="navbar-brand d-flex align-items-center" href="../index.php" style="margin-right: 0px;margin-left: 50px;"><span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon" style="background: #1a374d;"><i class="fas fa-tooth"></i></span><span style="color: var(--bs-white);font-weight: bold;">PENYAKIT GIGI</span></a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-2"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-2" style="margin-right: 50px;">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link d-flex justify-content-center align-items-center" style="color: var(--bs-white);margin-left: 58px;margin-right: -1px;font-weight: bold;" href="#checkbox">Diagnosis</a></li>
                        <li class="nav-item"><a class="nav-link d-flex justify-content-center align-items-center" href="/#footer" style="color: var(--bs-white);margin-left: 58px;margin-right: -1px;font-weight: bold;">Consultation</a></li>
                        <li class="nav-item"><a class="nav-link d-flex justify-content-center align-items-center" href="../#about" style="color: var(--bs-white);margin-left: 58px;font-weight: bold;">About</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <form method="POST" action="hasil.php" name="diagnosa" enctype="form-data/multipart">
    <div id="checkbox">
        <div class="container" id="diagnosa">
            <h1 style="color: rgb(105,152,171);font-weight: bold;">Diagnosa Penyakit</h1>
        </div>
        
        <div class="container" id="check">
            <div class="row">
                <div class="col" id="Col1">
                <?php if (isset($_GET['error'])) {echo "<div class='alert alert-warning alert-dismissible fade show' role='alert'><strong>Ups! </strong> $_GET[error]</div>";} else { echo "";} ?>
                    <?php $query = mysqli_query($conn,"SELECT * FROM gejala"); ?>
                    <?php foreach ($query as $data): ?>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="formCheck-2" value= "<?php echo $data['kode'];?>" style="font-size: 20px;" name="cek[]">
                        <label class="form-check-label" for="formCheck-2" style="color: #33383b;"> <?php echo $data['kode'],". ",$data['gejala']; ?> <br></label>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col" id="but" style="margin-top: 20px;">
                <input class="btn" name="proses" value="Proses" type="submit"/>
            </div>
        </div>
    </div>
    </form>

    <div id="footer">
        <footer style="background: #6998AB;">
            <div class="row">
                <div class="col-sm-6 col-md-4 footer-navigation"><a class="navbar-brand d-flex align-items-center" href="#top-navbar" style="margin-right: 0px;margin-left: -7px;margin-top: 11px;margin-bottom: -10px;"><span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon" style="background: #1a374d;"><i class="fas fa-tooth"></i></span><span style="color: var(--bs-white);">PENYAKIT GIGI</span></a>
                    <h3></h3>
                    <p class="company-name" style="color: #ffffff;">UBP web © 2022</p>
                </div>
                <div class="col-sm-6 col-md-4 footer-contacts">
                    <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                        <p><span class="new-line-span">Jl. Karaba no 21</span>Karaba, Karawang</p>
                    </div>
                    <div><i class="fa fa-phone footer-contacts-icon"></i>
                        <p class="footer-center-info email text-start"> +1 555 123456</p>
                    </div>
                    <div><i class="fa fa-envelope footer-contacts-icon"></i>
                        <p> <a href="#" target="_blank" style="color: rgb(255,255,255);">support@company.com</a></p>
                    </div>
                </div>
                <div class="col-md-4 footer-about">
                    <h4>About kreator</h4>
                    <p style="color: rgb(255,255,255);">Website ini dibuat oleh beberapa orang dari berbagai latar belakang (Febri Yoka Adira, Khoirul Abidia Reivan, Rizki Zulkarnaen)</p>
                    <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
                </div>
            </div>
        </footer>
    </div>
    <script src="../assets/bootstrap/js/bootstrap.min.js?h=5488c86a1260428f0c13c0f8fb06bf6a"></script>
    <script src="../assets/js/bs-init.js?h=cd759cd84d0f5ce08e477217e1c37697"></script>
</body>

</html>