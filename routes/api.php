<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('catAreas','AreaController');
Route::resource('catComisiones','ComisionController');
Route::resource('catDiputados','DiputadoController');
Route::resource('catDistritos','DistritoController');
Route::resource('catEjerciciosLegislativos','EjercicioLegislativoController');
Route::resource('catLegislaturas','LegislaturaController');
Route::resource('catPartidospoliticos','PartidoPoliticoController');
Route::resource('catPeriodos','PeriodoController');
Route::resource('catSesiones','SesionController');

Route::resource('diariodedebates','DiarioDeDebatesController');
Route::get('diariodedebates/{idEjercicio}/{nLegis}','DiarioDeDebatesController@getDiarioDeDebates');
Route::resource('diariodedebatesanexos','DiarioDeDebatesAnexosController');
Route::resource('diputadoslegislatura','DiputadosLegislaturaController');
Route::resource('juntadecoordinacionpolitica','JuntaCoordinacionPoliticaController');
Route::resource('juntadetrabajoslegislativos','JuntaTrabajosLegislativosController');
Route::resource('mesadirectiva','MesaDirectivaController');
Route::resource('sesiones','SesionesController');
Route::get('sesiones/{idEjercicio}/{nLegis}','SesionesController@obtenerSesionesPorEjercicioLegislatura');
Route::resource('sesionesanexos','SesionesAnexosController');
Route::resource('sesionesmedios','SesionesMediosController');