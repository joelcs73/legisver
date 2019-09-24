<?php

namespace App\Http\Controllers;

use App\DiarioDeDebates;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DiarioDeDebatesController extends Controller
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
        $this->getDiarioDeDebates(1,$leg);
    }

    public function getDiarioDeDebates($ejercicio,$legislatura){
        $ddebates = DB::table('diariodedebates')
        ->leftJoin('cat_ejerciciolegislativo','cat_ejerciciolegislativo.idEjercicio', '=', 'diariodedebates.idEjercicio')
        ->leftJoin('cat_periodos', 'cat_periodos.idPeriodo', '=', 'diariodedebates.idPeriodo')
        ->leftJoin('cat_legislaturas','cat_legislaturas.idLegislatura','=','diariodedebates.idLegislatura')
        ->select(
            'diariodedebates.id',
            'diariodedebates.fecha',
            'diariodedebates.archivo',
            'cat_ejerciciolegislativo.nombre as ejercicio',
            'cat_periodos.nombre as periodo'
        )
        ->where([
            ['cat_ejerciciolegislativo.idEjercicio','=',$ejercicio],
            ['cat_legislaturas.clave','=',$legislatura]
        ])
        ->get();
        echo json_encode($ddebates);
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
        $diario = new DiarioDeDebates();
        $diario->fecha = $request->input('fecha');
        $diario->archivo = $request->input('archivo');
        $diario->idEjercicio = $request->input('idEjercicio');
        $diario->idPeriodo = $request->input('idPeriodo');
        $diario->idLegislatura = $request->input('idLegislatura');
        $diario->save();
        echo json_encode($diario);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\DiarioDeDebates  $diarioDeDebates
     * @return \Illuminate\Http\Response
     */
    public function show($ejercicio)
    {
        $oLegislatura = new LegislaturaController();
        $leg = $oLegislatura->ultimaLegislatura();
        $this->getDiarioDeDebates($ejercicio,$leg);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\DiarioDeDebates  $diarioDeDebates
     * @return \Illuminate\Http\Response
     */
    public function edit(DiarioDeDebates $diarioDeDebates)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\DiarioDeDebates  $diarioDeDebates
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idDiario)
    {
        $diario = DiarioDeDebates::find($idDiario);
        $diario->fecha = $request->input('fecha');
        $diario->archivo = $request->input('archivo');
        $diario->idEjercicio = $request->input('idEjercicio');
        $diario->idPeriodo = $request->input('idPeriodo');
        $diario->idLegislatura = $request->input('idLegislatura');
        $diario->save();
        echo json_encode($diario);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\DiarioDeDebates  $diarioDeDebates
     * @return \Illuminate\Http\Response
     */
    public function destroy($idDiario)
    {
        $diario = DiarioDeDebates::find($idDiario);
        $diario->delete();
    }
}