<?php

namespace App\Http\Controllers;

use App\AgendaLegislativa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AgendaLegislativaController extends Controller
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
        $this->getAgenda(1,$leg);
    }

    public function getAgenda($ejercicio,$legislatura){
        $sumario = DB::table('agendalegislativa')
        ->leftJoin('cat_ejerciciolegislativo','cat_ejerciciolegislativo.idEjercicio', '=', 'agendalegislativa.idEjercicio')
        ->leftJoin('cat_periodos', 'cat_periodos.idPeriodo', '=', 'agendalegislativa.idPeriodo')
        ->leftJoin('cat_legislaturas','cat_legislaturas.idLegislatura','=','agendalegislativa.idLegislatura')
        ->select(
            'agendalegislativa.id',
            'agendalegislativa.descripcion',
            'agendalegislativa.archivoAgenda',
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
        $agenda = new AgendaLegislativa();
        $agenda->descripcion = $request->input('descripcion');
        $agenda->archivoAgenda = $request->input('archivoAgenda');
        $agenda->idEjercicio = $request->input('idEjercicio');
        $agenda->idPeriodo = $request->input('idPeriodo');
        $agenda->idLegislatura = $request->input('idLegislatura');
        $agenda->save();
        echo json_encode($agenda);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AgendaLegislativa  $agendaLegislativa
     * @return \Illuminate\Http\Response
     */
    public function show($ejercicio)
    {
        $oLegislatura = new LegislaturaController();
        $leg = $oLegislatura->ultimaLegislatura();
        $this->getAgenda($ejercicio,$leg);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AgendaLegislativa  $agendaLegislativa
     * @return \Illuminate\Http\Response
     */
    public function edit(AgendaLegislativa $agendaLegislativa)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AgendaLegislativa  $agendaLegislativa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idAgenda)
    {
        $agenda = AgendaLegislativa::find($idAgenda);
        $agenda->descripcion = $request->input('descripcion');
        $agenda->archivo = $request->input('archivoAgenda');
        $agenda->idEjercicio = $request->input('idEjercicio');
        $agenda->idPeriodo = $request->input('idPeriodo');
        $agenda->idLegislatura = $request->input('idLegislatura');
        $agenda->save();
        echo json_encode($agenda);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AgendaLegislativa  $agendaLegislativa
     * @return \Illuminate\Http\Response
     */
    public function destroy($idAgenda)
    {
        $sumario = AgendaLegislativa::find($idAgenda);
        $sumario->delete();
    }
}
