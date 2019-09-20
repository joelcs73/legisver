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

// Route::resource('areas','AreaController');
// Route::resource('comisiones','ComisionController');
// Route::resource('diputados','DiputadoController');
// Route::resource('distritos','DistritoController');
// Route::resource('legislaturas','LegislaturaController');
// Route::resource('mesadirectiva','MesaDirectivaController');
// Route::resource('partidospoliticos','PartidoPoliticoController');
// Route::resource('diputadoslegislatura','DiputadosLegislaturaController');
// Route::resource('juntadecoordinacionpolitica','JuntaCoordinacionPoliticaController');
// Route::resource('juntadetrabajoslegislativos','JuntaTrabajosLegislativosController');