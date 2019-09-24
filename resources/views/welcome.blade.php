{{-- <!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>sitioAdmin</title>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            @include('menu')
            <h4>@yield('titulo')<span class="badge badge-dark">@yield('subtitulo')</span></h4>
            @yield('Contenido')
        </div>
    </body>
    </html> --}}
    
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>Api's Legisver</title>
        
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        {{-- Bootstrap --}}
        <link rel="stylesheet" href="https://bootswatch.com/4/lumen/bootstrap.css">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container ">
            <div>
                <h1>Api's</h1>
            </div>
            <ul class="nav nav-tabs">
                <li class="nav-item active">
                    <a class="nav-link" data-toggle="tab" href="#catalogos">Catálogos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " data-toggle="tab" href="#legisladores">Legisladores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " data-toggle="tab" href="#informacionLegislativa">informacion legislativa</a>
                </li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active show" id="catalogos">
                    <div><a target="_blank" href="/api/catAreas">Areas</a></div>
                    <div><a target="_blank" href="/api/catComisiones">Comisiones</a></div>
                    <div><a target="_blank" href="/api/catDiputados">Diputados</a> </div>
                    <div><a target="_blank" href="/api/catDistritos">Distritos</a></div>
                    <div><a target="_blank" href="/api/catEjerciciosLegislativos">Ejercicios Legislativos</a></div>
                    <div><a target="_blank" href="/api/catLegislaturas">Legislaturas</a></div>
                    <div><a target="_blank" href="/api/catPartidospoliticos">Partidos políticos</a></div>
                    <div><a target="_blank" href="/api/catPeriodos">Periodos</a></div>
                    <div><a target="_blank" href="/api/catSesiones">Sesiones</a></div>
                </div>
                <div class="tab-pane fade" id="legisladores">
                    <div><a target="_blank" href="/api/diputadoslegislatura">Diputados Legislatura actual</a></div>
                    <div><a target="_blank" href="/api/juntadecoordinacionpolitica">Junta de Coordinación Política</a></div>
                    <div><a target="_blank" href="/api/juntadetrabajoslegislativos">Junta de Trabajos Legislativos</a></div>
                    <div><a target="_blank" href="/api/mesadirectiva">Mesa Directiva</a></div>
                    <div>Por default obtiene información de la última legislatura en ejercicio.</div> 
                    <div>Para obtener datos de otra legislatura se agrega a la URL: <strong>/numleg</strong></div>
                </div>

                <div class="tab-pane fade" id="informacionLegislativa">
                    <div><a target="_blank" href="/api/sesiones">Sesiones</a></div>
                    <div>Por default obtiene información del primer ejercicio de la última legislatura en ejercicio.</div>
                    <div>Para obtener datos de otro ejercicio se agrega a la URL: <strong>/ejercicio</strong></div>
                    <div>Para obtener datos de otro ejercicio y/o legislatura se agrega a la URL: <strong>/ejercicio/numleg</strong></div>

                    <div><a target="_blank" href="/api/sesionesanexos">Sesiones-Anexos</a></div>
                    <div><a target="_blank" href="/api/sesionesmedios">Sesiones-Medios</a></div>
                    <div>Por default obtiene información de todos los anexos y medios.</div>
                    <div>Para obtener datos de una sesion específica se agrega a la URL: <strong>/idSesion</strong></div>
                    <hr>
                    <div><a target="_blank" href="/api/diariodedebates">Diario de debates</a></div>
                    <div>Por default obtiene información del primer ejercicio de la última legislatura en ejercicio.</div>
                    <div>Para obtener datos de otro ejercicio se agrega a la URL: <strong>/ejercicio</strong></div>
                    <div>Para obtener datos de otro ejercicio y/o legislatura se agrega a la URL: <strong>/ejercicio/numleg</strong></div>

                    <div><a target="_blank" href="/api/diariodedebatesanexos">Diario de debates-Anexos</a></div>
                    <div>Por default obtiene información de todos los anexos.</div>
                    <div>Para obtener datos de un diario de debates específico se agrega a la URL: <strong>/idDiario</strong></div>
                </div>
            </div>
            {{-- <hr> --}}
            @yield('titulo')
            @yield('Contenido')
        </div>
    </body>
    <div class="container">
        <footer class="text-muted text-center">Laravel framework 6.0</footer>
    </div>
</html>
