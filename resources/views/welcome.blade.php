<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>Api's Legisver</title>
        
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        {{-- Bootstrap --}}
        <link rel="stylesheet" href="https://bootswatch.com/4/minty/bootstrap.css">

        {{-- Iconos --}}
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css" />

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container ">
            <div class="jumbotron">
                <h1 class="text-center">Congreso del Estado de Veracruz</h1>
                <h3 class="text-center">Coordinación de informática</h3>
                <h5 class="text-center">Construcción de aplicaciones</h5>
                <p class="lead">Aquí encontrarás las apis que podrás consumir para crear tu sitio frontend</p>
                <p class="lead">También las aplicaciones para administrar los datos para dicha página</p>
                <hr class="my-4">
                <p class="">
                  <a class="btn btn-primary btn-sm" href="/sitioApis" role="button">Apis</a>
                </p>
                <p class="">
                    <a class="btn btn-primary btn-sm" href="/sitioAdmin" role="button">Administración</a>
                  </p>
              </div>
        </div>
    </body>
    <div class="container">
        <footer class="d-line bg-secondary text-muted text-center">Laravel framework 6.0</footer>
    </div>
</html>
