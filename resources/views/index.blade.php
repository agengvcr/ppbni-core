<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Satria Banten Kabupaten Bogor</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="{{url('/')}}/assets/img/logo.jpeg" rel="icon">
  <link href="{{url('/')}}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{url('/')}}/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="{{url('/')}}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="{{url('/')}}/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="{{url('/')}}/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="{{url('/')}}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="{{url('/')}}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="{{url('/')}}/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Knight - v4.7.0
  * Template URL: https://bootstrapmade.com/knight-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <a href="index.html" class="hero-logo" data-aos="zoom-in"><img src="assets/img/logo.jpeg" width='200' height='200' alt=""></a>
      <h1 data-aos="zoom-in">PATRIOT PEMERSATU BANTEN NASIONAL INDONESIA</h1>
      <h2 data-aos="zoom-out">PPBNI SATRIA BANTEN</h2>
      <h2 data-aos="zoom-out">DEWAN PIMPINAN CABANG KABUPATEN BOGOR</h2>
      <a data-aos="fade-up" data-aos-delay="200" href="#about" class="btn-get-started scrollto">Tentang Kami</a>
    </div>
  </section><!-- End Hero -->
  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <a href="index.html"><img src="assets/img/logo.jpeg" alt="" class="img-fluid"></a>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li class="dropdown"><a href="#"><span>Dewan Pimpinan Cabang</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Struktur Organisasi</a></li>
              <li><a href="#">Anggota</a></li>
              <!-- <li><a href="#">Data DPAC dan DPRT Kabupaten Bogor</a></li>
              <li><a href="#">Program Kerja</a></li> -->
            </ul>
          </li>
          <!-- <li class="dropdown"><a href="#"><span>Kegiatan</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">DPC</a></li>
              <li><a href="#">DPAC</a></li>
              <li><a href="#">Ranting</a></li>
            </ul>
          </li> -->
          <li class="dropdown"><a href="#"><span>Data PAC</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">DPAC</a></li>
              <li><a href="#">Ranting</a></li>
            </ul>
          </li>
          <!-- <li><a class="nav-link scrollto" href="#team">Register</a></li> -->
          @if (Route::has('login'))
                <li">
                    @auth
                        <a href="{{ url('/home') }}" class="text-sm text-gray-700 underline">Admin</a>
                    @else
                        <a href="{{ route('login') }}" class="text-sm text-gray-700 underline">Login</a>

                        <!-- @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 underline">Register</a>
                        @endif -->
                    @endif
          </li>
            @endif
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
    <main id="main">
    <section id="about" class="about">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Tentang Kami</h2>
          <p>Magnam dolores commodi suscipit eius consequatur</p>
        </div>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-right">
            <div class="image">
              <img src="assets/img/about.jpg" class="img-fluid" alt="">
            </div>
          </div>
          <div class="col-lg-6" data-aos="fade-left">
            <div class="content pt-4 pt-lg-0 pl-0 pl-lg-3 ">
              <h3>Voluptatem dignissimos provident quasi corporis</h3>
              <p class="fst-italic">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                magna aliqua.
              </p>
              <ul>
                <li><i class="bx bx-check-double"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                <li><i class="bx bx-check-double"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                <li><i class="bx bx-check-double"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
              </ul>
              <p>
                Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                culpa qui officia deserunt mollit anim id est laborum
              </p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->
  
    </main>
    <!-- ======= Footer ======= -->
  <footer id="footer">

<div class="footer-top">

  <div class="container">

    <div class="row justify-content-center">
      <div class="col-lg-6">
        <a href="#header" class="scrollto footer-logo"><img src="assets/img/logo.jpeg" alt=""></a>
        <h3>PATRIOT PEMERSATU BANTEN NASIONAL INDONESIA</h3>
        <p>PPBNI SATRIA BANTEN <br>
        DEWAN PIMPINAN CABANG KABUPATEN BOGOR
        </p>
      </div>
    </div>
  </div>
</div>

<div class="container footer-bottom clearfix">
  <div class="copyright">
    &copy; Copyright <strong><span>Satria Banten</span></strong>. All Rights Reserved
  </div>
  <div class="credits">
    <!-- All the links in the footer should remain intact. -->
    <!-- You can delete the links only if you purchased the pro version. -->
    <!-- Licensing information: https://bootstrapmade.com/license/ -->
    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/knight-free-bootstrap-theme/ -->
    Designed by <a href="https://bootstrapmade.com/">Muhammad Ageng Nugroho</a>
  </div>
</div>
</footer><!-- End Footer -->
    @yield('content')
    <!-- Vendor JS Files -->
    <script src="{{url('/')}}/assets/vendor/aos/aos.js"></script>
    <script src="{{url('/')}}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="{{url('/')}}/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="{{url('/')}}/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="{{url('/')}}/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="{{url('/')}}/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="{{url('/')}}/assets/js/main.js"></script>
    @yield('custom-js')
</body>
</html>