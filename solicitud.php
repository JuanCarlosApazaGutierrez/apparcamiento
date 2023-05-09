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
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script>
        function onSubmit(token) {
            document.getElementById("demo-form").submit();
        }
    </script>

</head>

<body class="sub_page">

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
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">

          <ul class="navbar-nav  ">
              <li class="nav-item ">
                <a class="nav-link" href="index.php"><h5>Inicio</h5> </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html"><h5>Que es</h5></a>
              </li>
          
              <li class="nav-item">
                <a class="nav-link" href="why.html"><h5>Beneficios</h5></a>
              </li>

              <li class="nav-item active">
                <a class="nav-link" href="solicitud.php"><h5>Solicitud de registro</h5><span class="sr-only">(current)</span></a>
              </li>
              
              
              <li class="nav-item ">
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
    <section class="about_section layout_padding">
    <div class="content-wrapper">
        
        <div class="container">
            <br>
            <div class="row">
                <div class="col-md-12">

                    <div class="card card-outline card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Registre los datos de su parqueo para afiliarlo</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    
                                </button>
                            </div>

                        </div>

                        <div class="card-body" style="display: block;">

                            <div class="row">
                                <div class="col-md-5">
                                    <label for="">Nombre del parqueo <span style="color: red"><b>*</b></span></label>
                                    <input type="text" class="form-control" id="nombre_parqueo">
                                </div>
                                <div class="col-md-5">
                                    <label for="">Actividad de la empresa <span style="color: red"><b>*</b></span></label>
                                    <input type="text" class="form-control" id="actividad_empresa">
                                </div>
                                <div class="col-md-2">
                                    <label for="">Sucursal <span style="color: red"><b>*</b></span></label>
                                    <input type="text" class="form-control" id="sucursal">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label for="">Dirección <span style="color: red"><b>*</b></span></label>
                                    <input type="text" class="form-control" id="direccion">
                                </div>
                                <div class="col-md-6">
                                    <label for="">Zona <span style="color: red"><b>*</b></span></label>
                                    <input type="text" class="form-control" id="zona">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <label for="">Teléfono <span style="color: red"><b>*</b></span></label>
                                    <input type="text" class="form-control" id="telefono">
                                </div>
                                <div class="col-md-4">
                                    <label for="">Departamento o ciudad <span style="color: red"><b>*</b></span></label>
                                    <input type="text" class="form-control" id="departamento_ciudad">
                                </div>
                                <div class="col-md-4">
                                    <label for="">País <span style="color: red"><b>*</b></span></label>
                                    <input type="text" class="form-control" id="pais">
                                </div>
                            </div>

                            <hr>

                            <div class="row">
                               
                                <div class="col-md-4 pull-right">
                                    <button class="btn btn-primary btn-block" id="btn_registrar_informacion">
                                        Solicitar registro
                                    </button>
                                </div>
                            </div>

                            <div id="respuesta">

                            </div>


                        </div>

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



