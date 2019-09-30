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

Route::get('/sitioAdmin', function () {
    return view('sitioAdmin');
});

Route::get('/sitioApis', function () {
    return view('sitioApis');
});

Route::get('/legisladores/','DiputadosLegislaturaController@showweb');

Route::get('/legisladores/edita/{idDiputado}','DiputadoController@edita')
    ->name('diputado.edita');
    
Route::get('/legisladores/licencia/{idDiputado}','DiputadosLegislaturaController@licencia')->name('diputado.licencia');
Route::get('/legisladores/mesadirectiva','MesaDirectivaController@showweb');
Route::get('/legisladores/juntadecoordinacionpolitica','JuntaCoordinacionPoliticaController@showweb');
Route::get('/legisladores/juntadetrabajoslegislativos','JuntaTrabajosLegislativosController@showweb');

Route::get('/guardalegislador/{idDiputado}','DiputadoController@actualiza');
Route::get('/guardalicencia','DiputadosLegislaturaController@guardalicencia');
