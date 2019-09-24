<?php

namespace App\Http\Controllers;

use App\SumarioLegislativo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class SumarioLegislativoController extends Controller
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
        $this->getSumario(1,$leg);
    }

    public function getSumario($ejercicio,$legislatura){
        $sumario = DB::table('sumariolegislativo')
        ->leftJoin('cat_ejerciciolegislativo','cat_ejerciciolegislativo.idEjercicio', '=', 'sumariolegislativo.idEjercicio')
        ->leftJoin('cat_periodos', 'cat_periodos.idPeriodo', '=', 'sumariolegislativo.idPeriodo')
        ->leftJoin('cat_legislaturas','cat_legislaturas.idLegislatura','=','sumariolegislativo.idLegislatura')
        ->select(
            'sumariolegislativo.id',
            'sumariolegislativo.archivoSumario',
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
        $sumario = new SumarioLegislativo();
        $sumario->archivoSumario = $request->input('archivoSumario');
        $sumario->idEjercicio = $request->input('idEjercicio');
        $sumario->idPeriodo = $request->input('idPeriodo');
        $sumario->idLegislatura = $request->input('idLegislatura');
        $sumario->save();
        echo json_encode($sumario);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SumarioLegislativo  $sumarioLegislativo
     * @return \Illuminate\Http\Response
     */
    public function show($ejercicio)
    {
        $oLegislatura = new LegislaturaController();
        $leg = $oLegislatura->ultimaLegislatura();
        $this->getSumario($ejercicio,$leg);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SumarioLegislativo  $sumarioLegislativo
     * @return \Illuminate\Http\Response
     */
    public function edit(SumarioLegislativo $sumarioLegislativo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SumarioLegislativo  $sumarioLegislativo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idSumario)
    {
        $sumario = SumarioLegislativo::find($idSumario);
        $sumario->archivoSumario = $request->input('archivoSumario');
        $sumario->idEjercicio = $request->input('idEjercicio');
        $sumario->idPeriodo = $request->input('idPeriodo');
        $sumario->idLegislatura = $request->input('idLegislatura');
        $sumario->save();
        echo json_encode($sumario);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SumarioLegislativo  $sumarioLegislativo
     * @return \Illuminate\Http\Response
     */
    public function destroy($idSumario)
    {
        $sumario = SumarioLegislativo::find($idSumario);
        $sumario->delete();
    }
}
