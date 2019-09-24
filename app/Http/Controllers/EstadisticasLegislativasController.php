<?php

namespace App\Http\Controllers;

use App\EstadisticasLegislativas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EstadisticasLegislativasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $oLegislatura = new LegislaturaController();
        $leg = $oLegislatura->ultimaLegislatura();
        $this->getEstadisticas(1,$leg);
    }

    public function getEstadisticas($ejercicio,$legislatura){
        $sumario = DB::table('estadisticaslegislativas')
        ->leftJoin('cat_ejerciciolegislativo','cat_ejerciciolegislativo.idEjercicio', '=', 'estadisticaslegislativas.idEjercicio')
        ->leftJoin('cat_periodos', 'cat_periodos.idPeriodo', '=', 'estadisticaslegislativas.idPeriodo')
        ->leftJoin('cat_legislaturas','cat_legislaturas.idLegislatura','=','estadisticaslegislativas.idLegislatura')
        ->select(
            'estadisticaslegislativas.id',
            'estadisticaslegislativas.archivoEstadistica',
            'cat_ejerciciolegislativo.nombre as ejercicio',
            'cat_periodos.nombre as periodo'
        )
        ->where([
            ['cat_ejerciciolegislativo.idEjercicio','=',$ejercicio],
            ['cat_legislaturas.clave','=',$legislatura]
        ])
        ->get();
        echo json_encode($sumario);
        // dd($ejercicio,$legislatura);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $estadistica = new EstadisticasLegislativas();
        $estadistica->archivoEstadistica = $request->input('archivoEstadistica');
        $estadistica->idEjercicio = $request->input('idEjercicio');
        $estadistica->idPeriodo = $request->input('idPeriodo');
        $estadistica->idLegislatura = $request->input('idLegislatura');
        $estadistica->save();
        echo json_encode($estadistica);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\EstadisticasLegislativas  $estadisticasLegislativas
     * @return \Illuminate\Http\Response
     */
    public function show($ejercicio)
    {
        $oLegislatura = new LegislaturaController();
        $leg = $oLegislatura->ultimaLegislatura();
        $this->getEstadisticas($ejercicio,$leg);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\EstadisticasLegislativas  $estadisticasLegislativas
     * @return \Illuminate\Http\Response
     */
    public function edit(EstadisticasLegislativas $estadisticasLegislativas)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\EstadisticasLegislativas  $estadisticasLegislativas
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idEstadistica)
    {
        $estadistica = EstadisticasLegislativas::find($idEstadistica);
        $estadistica->archivoEstadistica = $request->input('archivoEstadistica');
        $estadistica->idEjercicio = $request->input('idEjercicio');
        $estadistica->idPeriodo = $request->input('idPeriodo');
        $estadistica->idLegislatura = $request->input('idLegislatura');
        $estadistica->save();
        echo json_encode($estadistica);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\EstadisticasLegislativas  $estadisticasLegislativas
     * @return \Illuminate\Http\Response
     */
    public function destroy($idEstadistica)
    {
        $estadistica = EstadisticasLegislativas::find($idEstadistica);
        $estadistica->delete();
    }
}
