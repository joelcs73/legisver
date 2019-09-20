<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/api/areas','AreaController@index');
Route::get('/api/comisiones','ComisionController@index');
Route::get('/api/diputados','DiputadoController@index');
Route::get('/api/distritos','DistritoController@index');
Route::get('/api/legislaturas','LegislaturaController@index');
Route::get('/api/mesadirectiva','MesaDirectivaController@index');
Route::get('/api/partidospoliticos','PartidoPoliticoController@index');
Route::get('/api/diputadoslegislatura','DiputadosLegislaturaController@index');
Route::get('/api/diputadoslegislatura/{numLeg}','DiputadosLegislaturaController@show');
Route::get('/api/juntadecoordinacionpolitica','JuntaCoordinacionPoliticaController@index');
Route::get('/api/juntadetrabajoslegislativos','JuntaTrabajosLegislativosController@index');

Route::get('/legisladores/','DiputadosLegislaturaController@showweb');

Route::get('/legisladores/edita/{idDiputado}','DiputadoController@edita')
    ->name('diputado.edita');
    
Route::get('/legisladores/licencia/{idDiputado}','DiputadosLegislaturaController@licencia')->name('diputado.licencia');
Route::get('/legisladores/mesadirectiva','MesaDirectivaController@show');

Route::get('/guardalegislador/{idDiputado}','DiputadoController@actualiza');
Route::get('/guardalicencia','DiputadosLegislaturaController@guardalicencia');