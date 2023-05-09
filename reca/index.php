<?php
include( 'claves.php' ); //esto carga el archivo con el array $claves 
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Compartí tu web</title>
    <link rel="stylesheet" href="/estilos.css" />
    <script src="https://www.google.com/recaptcha/api.js?render=<?php echo $claves['publica']; ?>"></script>
</head>
<body>
    <header>
        <h1>Compartí tu web</h1>
    </header>
    <main>
        <form method="post" action="/upload.php" enctype="multipart/form-data">
            <h2>Subí un zip</h2>
            <?php 
            if( isset( $_GET['error'] ) ){
                echo "<p class='error'>$_GET[error]</p>";
            }
            if( isset( $_GET['ok'] ) ){
                echo "<p class='ok'>$_GET[ok]</p>";
            }
            ?>

            <p>Usá este formulario para compartir tu web (en formato HTML o PHP) con toda la comunidad de Developers, es importante que sea un UNICO archivo con extensión ZIP</p>

            <div>
                <span>Tu nombre</span>
                <input type="text" name="nombre" autocomplete="off" required />
            </div>
            <div>
                <span>Tu archivo (extension ZIP)</span>
                <input type="file" name="zip" required />
            </div>
            <input type="hidden" name="token" id="token" />
            <div class='botones'>
                <button type="submit" id="btn" disabled>Subir archivo</button>
            </div>
        </form>
    </main>
    <script>
        grecaptcha.ready( function( ){
            grecaptcha.execute( 
                '<?php echo $claves['publica']; ?>', 
                { action: 'formulario' }
            ).then( function( respuesta_token ){
                const itoken = document.getElementById('token');
                const btn = document.getElementById('btn');

                itoken.value = respuesta_token;
                btn.disabled = false;
            } )
        } );
    </script>
</body>
</html>