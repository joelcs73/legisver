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
                    <a class="nav-link " data-toggle="tab" href="#informacionLegislativa">Informacion Legislativa</a>
                </li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active show" id="catalogos">
                    <div><a target="_blank" href="/api/catAreas">Áreas</a></div>
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
                    <div><a target="_blank" href="/api/diputadoscomisiones">Diputados - Comisiones</a></div>
                    <blockquote class="blockquote text-left">
                        <p class="mb-0">Por default obtiene todos los diputados y todas las comisiones.</p>
                        <footer class="blockquote-footer">Para obtener las comisiones en determinada legislatura se agrega a la URL: <cite title="Source Title">/numLegislatura</cite> Ejemplo: <a target="_blank" href="/api/diputadoscomisiones/65">/api/diputadoscomisiones/65</a></footer>
                        <footer class="blockquote-footer">Para obtener las comisiones en las que participa un diputado se agrega a la URL: <cite title="Source Title">/d/idDiputado</cite> Ejemplo: <a target="_blank" href="/api/diputadoscomisiones/d/20">/api/diputadoscomisiones/d/20</a></footer>
                        <footer class="blockquote-footer">Para obtener los diputados que participan en una comisión se agrega a la URL: <cite title="Source Title">/c/idComision</cite> Ejemplo: <a target="_blank" href="/api/diputadoscomisiones/c/1">/api/diputadoscomisiones/c/1</a></footer>
                        <footer class="blockquote-footer">Para obtener las comisiones en las que participa un diputado en determinada legislatura se agrega a la URL: <cite title="Source Title">/d/idDiputado/numLegislatura</cite> Ejemplo: <a target="_blank" href="/api/diputadoscomisiones/d/20/65">/api/diputadoscomisiones/d/20/65</a></footer>
                        <footer class="blockquote-footer">Para obtener los diputados que participan en una comisión en determinada legislatura se agrega a la URL: <cite title="Source Title">/c/idComision/numLegislatura</cite> Ejemplo: <a target="_blank" href="/api/diputadoscomisiones/c/1/65">/api/diputadoscomisiones/c/1/65</a></footer>
                    </blockquote>
                    <div><a target="_blank" href="/api/diputadoslegislatura">Diputados Legislatura actual</a></div>
                    <div><a target="_blank" href="/api/juntadecoordinacionpolitica">Junta de Coordinación Política</a></div>
                    <div><a target="_blank" href="/api/juntadetrabajoslegislativos">Junta de Trabajos Legislativos</a></div>
                    <div><a target="_blank" href="/api/mesadirectiva">Mesa Directiva</a></div>
                    <blockquote class="blockquote text-left">
                        <p class="mb-0">Por default obtiene información de la última Legislatura en ejercicio.</p>
                        <footer class="blockquote-footer">Para obtener datos de otra legislatura se agrega a la URL: <cite title="Source Title">/numLegislatura</cite></footer>
                    </blockquote>

                </div>

                <div class="tab-pane fade" id="informacionLegislativa">
                    <div><a target="_blank" href="/api/agendalegislativa">Agenda Legislativa</a></div>
                    <blockquote class="blockquote text-left">
                        <p class="mb-0">Por default obtiene información del primer ejercicio de la última Legislatura en ejercicio.</p>
                        <footer class="blockquote-footer">Para obtener datos de otro ejercicio se agrega a la URL: <cite title="Source Title">/numEjercicio</cite></footer>
                        <footer class="blockquote-footer">Para obtener datos de otro ejercicio y/o legislatura se agrega a la URL: <cite title="Source Title">/numEjercicio/numLegislatura</cite></footer>
                      </blockquote>
                      <hr>

                      <div><a target="_blank" href="/api/diariodedebates">Diario de debates</a></div>
                      <blockquote class="blockquote text-left">
                          <p class="mb-0">Por default obtiene información del primer ejercicio de la última Legislatura en ejercicio.</p>
                          <footer class="blockquote-footer">Para obtener datos de otro ejercicio se agrega a la URL: <cite title="Source Title">/ejercicio</cite></footer>
                          <footer class="blockquote-footer">Para obtener datos de otro ejercicio y/o legislatura se agrega a la URL: <cite title="Source Title">/numEjercicio/numLegislatura</cite></footer>
                        </blockquote>
  
                      <div><a target="_blank" href="/api/diariodedebatesanexos">Diario de debates-Anexos</a></div>
                      <blockquote class="blockquote text-left">
                          <p class="mb-0">Por default obtiene información de todos los anexos.</p>
                          <footer class="blockquote-footer">Para obtener datos de un diario de debates específico se agrega a la URL: <cite title="Source Title">/idDiario</cite></footer>
                        </blockquote>
                      <hr>
                      
                      <div><a target="_blank" href="/api/estadisticaslegislativas">Estadisticas Legislativas</a></div>
                      <blockquote class="blockquote text-left">
                          <p class="mb-0">Por default obtiene información del primer ejercicio de la última Legislatura en ejercicio.</p>
                          <footer class="blockquote-footer">Para obtener datos de otro ejercicio se agrega a la URL: <cite title="Source Title">/numEjercicio</cite></footer>
                          <footer class="blockquote-footer">Para obtener datos de otro ejercicio y/o legislatura se agrega a la URL: <cite title="Source Title">/numEjercicio/numLegislatura</cite></footer>
                        </blockquote>
                        <hr>

                    <div><a target="_blank" href="/api/sesiones">Sesiones</a></div>
                    <blockquote class="blockquote text-left">
                        <p class="mb-0">Por default obtiene información del primer ejercicio de la última Legislatura en ejercicio.</p>
                        <footer class="blockquote-footer">Para obtener datos de otro ejercicio se agrega a la URL: <cite title="Source Title">/numEjercicio</cite></footer>
                        <footer class="blockquote-footer">Para obtener datos de otro ejercicio y/o legislatura se agrega a la URL: <cite title="Source Title">/numEjercicio/numLegislatura</cite></footer>
                      </blockquote>
 
                    <div><a target="_blank" href="/api/sesionesanexos">Sesiones-Anexos</a></div>
                    <div><a target="_blank" href="/api/sesionesmedios">Sesiones-Medios</a></div>
                    <blockquote class="blockquote text-left">
                        <p class="mb-0">Por default obtiene información de todos los anexos y medios.</p>
                        <footer class="blockquote-footer">Para obtener datos de una sesion específica se agrega a la URL: <cite title="Source Title">/idSesion</cite></footer>
                      </blockquote>
                    <hr>


                    <div><a target="_blank" href="/api/sumariolegislativo">Sumario Legislativo</a></div>
                    <blockquote class="blockquote text-left">
                        <p class="mb-0">Por default obtiene información del primer ejercicio de la última Legislatura en ejercicio.</p>
                        <footer class="blockquote-footer">Para obtener datos de otro ejercicio se agrega a la URL: <cite title="Source Title">/numEjercicio</cite></footer>
                        <footer class="blockquote-footer">Para obtener datos de otro ejercicio y/o legislatura se agrega a la URL: <cite title="Source Title">/numEjercicio/numLegislatura</cite></footer>
                      </blockquote>


               </div>
            </div>
            {{-- <hr> --}}
            @yield('titulo')
            @yield('Contenido')