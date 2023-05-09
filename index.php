<?php

if (!empty($_POST)) {

    $name = $_POST['name'];
    $password = $_POST['password'];
    $captcha = $_POST['g-recaptcha-response'];

    $secret = 'aqui va la clave secreta';

    if (!$captcha) {

        echo "Por favor verifica el captcha";
    } else {

        $response = file_get_contents("");
        $arr = json_decode($response, TRUE);

        if ($arr['success']) {
            echo '<h2>Thanks</h2>';
        } else {
            echo '<h3>Error al comprobar Captcha </h3>';
        }
    }
}
?>

<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

  <title>Apparcamiento</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!-- nice selecy -->
  <link rel="stylesheet" href="css/nice-select.min.css">

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body>

  <div class="hero_area">
    <div class="bg-box">
    
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="index.php">
            <img src="images/logo.png" height="70"> 
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">

          <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="index.php"><h5>Inicio</h5> <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html"><h5>Que es</h5></a>
              </li>
          
              <li class="nav-item">
                <a class="nav-link" href="why.html"><h5>Beneficios</h5></a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="solicitud.php"><h5>Solicitud de registro</h5></a>
              </li>
              
              
              <li class="nav-item">
                <a class="nav-link"  data-toggle="modal" data-target="#exampleModal">
                  <h5>Ingresar</h5></a>
              </a>
              </li>
            </ul>

            
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
      <div class="container">
        <div class="detail-box col-md-9 mx-auto px-0">
          <h1>
            La forma de encontrar parqueo 
            FACIL
          </h1>
          <p>
            Pone a su disposición toda la información de parqueos o estacionamientos públicos disponibles.
            ¡Ahora con Apparcamiento estacionarte es fácil! Descarga nuestra aplicación móvil.
          </p>
        </div>
        <center><iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d15302.16256420873!2d-68.1381346686603!3d-16.49878155562473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sparqueos%20en%20la%20paz!5e0!3m2!1ses!2sbo!4v1681131411285!5m2!1ses!2sbo" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </center>
           
          </form>
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">
      <div class="heading_container ">
        <h2>
          ¿Qué es Apparcamiento?
        </h2>
        <p>
          Apparcamiento es un emprendimiento en Bolivia. EL objetivo es cubrir las necesidades de búsqueda de estacionamientos vehiculares en el país.

           nace como sistema de informacion de estacionamientos vehiculares en la ciudad de La Paz y ciudades próximas como la ciudad de El Alto, se pretende en un futuro cercano llegar a más ciudades de Bolivia.
          
          ¡Estacionarte ya no será un problema!</p>
      </div>
      <div class="row">
        <div class="col-lg-6 ">
          <div class="img-box">
            <img src="images/about-img.jpg" alt="">
          </div>
        </div>
        <br>
        <section> 
      <br>
         
      </section>
        
      </div>
    </div>
  </section>

  <!-- end about section -->
 
  <!-- why section -->

  <section class="why_section layout_padding-bottom">
    <div class="container">
      <div class="col-md-10 px-0">
        <div class="heading_container">

         
      
          <h2>
            ¿Conoce o Tiene un Parqueo?
          </h2>
          <p>
            Regístralo gratis, promociona y optimiza la informacion del estacionamiento. Puede ayudar a muchas personas a encontrar un estacionamiento en la ciudad.
            
          </p>
        </div>
      </div>

      <div class="detail-box">
        <h3>
          Beneficios al unirte 
        </h3>
        
        <ul> <li>Promoción gratuita: si es operador de un parqueo,
           tiene la posibilidad de ofrecer a sus clientes,
            informacion actualizada y en tiempo real del parqueo,
             de forma gratuita.</li>
             <li>
              Clientes satisfechos: Los conductores conocerán la
             ubicación y diponibilidad de los parqueos en forma digital,
              mejorando el tiempo de busqueda de estacionamientos.
             </li>
             <li>
              Parqueos nuevos: Publicación de la información al 
              instante, para atraer clientes potenciales, 
              nuevos clientes y cubrir los lugares vacios del parqueo.
             </li></ul>

      </div>
      <div class="row">  
        <div class="col-md-6 col-lg-4 mx-auto">
          <div class="box">
            <div class="img-box">
              <img src="images/w2.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
              reservas online  
              </h4>
            
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 mx-auto">
          <div class="box ">
            <div class="img-box">
              <img src="images/w3.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
                proceso simple de registro
              </h4>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>



 
  <!-- info section -->
  <section class="info_section ">
    <div class="container">
      <div class="info_top ">
        <div class="row ">
          <div class="col-md-6 col-lg-3 info_col">
            <div class="info_form">
              <h4>
                Para mas contacto
              </h4>
              <form action="">
                <input type="text" placeholder="Enter Your Email" />
                <button type="submit">
                  enviar
                </button>
              </form>
             
            </div>
          </div>
      
          <div class="col-md-6 col-lg-3 info_col">
           
            <p>
              Nuestras oficinas principales están ubicadas en La Paz,
              Bolivia.</p>
            <div class="contact_nav">
              
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call : +591 78994984
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  Email : Apparcamiento@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end info_section -->
  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
      </p>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js">
  </script>
  <!-- nice select -->
  <script src="js/jquery.nice-select.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- custom js -->
  <script src="js/custom.js"></script>

</body>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Inicio de Sesión</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-md-12">
                      <div class="form-group">
                          <label for="">Usuario/Email</label>
                          <input type="text" id="usuario" class="form-control">
                      </div>
                  </div>
                  <div class="col-md-12">
                      <div class="form-group">
                          <label for="">Contraseña</label>
                          <input type="password" id="password" class="form-control">
                      </div>
                  </div>
              </div>
              <div id="respuesta">

              </div>
          </div>
          <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
              <!-- <button type="button" class="btn btn-primary" id="btn_ingresar">Ingresar</button> -->
              <button type="button" name="login" class="btn btn-primary g-recaptcha" 
                data-sitekey="6LfjtrslAAAAAA7a0QtyqhfKfTjBrlikjPuuCGze" 
                data-callback='onSubmit' 
                data-action='submit' id="btn_ingresar">Ingresar</button>
          </div>
      </div>
  </div>
</div>


<script>
  $('#btn_ingresar').click(function () {
      login();
  });

  $('#password').keypress(function (e) {
      if(e.width == 13){
          login();
      }
  });

  function login() {
      var usuario = $('#usuario').val();
      var password_user = $('#password').val();

      if(usuario == ""){
          alert('Debe Introducir su Usuario...');
          $('#usuario').focus();
      }else if(password_user == ""){
          alert('Debe Introducir su Contraseña...');
          $('#password').focus();
      }else{
          var url = 'login/controller_login.php'
          $.post(url,{usuario:usuario, password_user:password_user},function (datos) {
              $('#respuesta').html(datos);
          });
      }
  }

</script>
</html>



