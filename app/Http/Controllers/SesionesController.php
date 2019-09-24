<?php

namespace App\Http\Controllers;

// use App\Sesiones;
use App\Http\Controllers\LegislaturaController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SesionesController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $oLegislatura = new LegislaturaController();
        $numLegis = $oLegislatura->ultimaLegislatura();
        $this->getSesiones(1,$numLegis);
    }

    public function getSesiones($idEjercicio,$numLegis){
        $sesiones = DB::table('sesiones')
        ->leftJoin("cat_legislaturas", "cat_legislaturas.idLegislatura", "=", "sesiones.idLegislatura")
        ->whereRaw("cat_legislaturas.clave = $numLegis")
        ->whereRaw("sesiones.idEjercicio = $idEjercicio")
        ->get();
        echo json_encode($sesiones);
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
        $fechasesion = new Sesiones();
        $fechasesion->fecha = $request->input('fecha');
        $fechasesion->hora = $request->input('hora');
        $fechasesion->idEjercicio = $request->input('idEjercicio');
        $fechasesion->idPeriodo = $request->input('idPeriodo');
        $fechasesion->idSesion = $request->input('idSesion');
        $fechasesion->idLegislatura = $request->input('idLegislatura');
        $fechasesion->activo = $request->input('activo');
        $fechasesion->numeroGaceta = $request->input('numeroGaceta');
        $fechasesion->archivoGaceta = $request->input('archivoGaceta');
        $fechasesion->archivoVersionEstenografica = $request->input('archivoVersionEstenografica');
        $fechasesion->archivoActa = $request->input('archivoActa');
        $fechasesion->save();
        return json_encode($fechasesion);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\FechaSesion  $fechaSesion
     * @return \Illuminate\Http\Response
     */
    public function show($idEjercicio)
    {
        $oLegislatura = new LegislaturaController();
        $numLegis = $oLegislatura->ultimaLegislatura();
        $this->getSesiones($idEjercicio,$numLegis);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\FechaSesion  $fechaSesion
     * @return \Illuminate\Http\Response
     */
    public function edit(FechaSesion $fechaSesion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\FechaSesion  $fechaSesion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $fechasesion = Sesiones::find($id);
        $fechasesion->fecha = $request->input('fecha');
        $fechasesion->hora = $request->input('hora');
        $fechasesion->idEjercicio = $request->input('idEjercicio');
        $fechasesion->idPeriodo = $request->input('idPeriodo');
        $fechasesion->idSesion = $request->input('idSesion');
        $fechasesion->idLegislatura = $request->input('idLegislatura');
        $fechasesion->activo = $request->input('activo');
        $fechasesion->numeroGadeta = $request->input('numeroGadeta');
        $fechasesion->archivoGaceta = $request->input('archivoGaceta');
        $fechasesion->archivoVersionEstenografica = $request->input('archivoVersionEstenografica');
        $fechasesion->archivoActa = $request->input('archivoActa');
        $fechasesion->save();
        echo json_encode($fechasesion);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\FechaSesion  $fechaSesion
     * @return \Illuminate\Http\Response
     */
    public function destroy(FechaSesion $fechaSesion)
    {
        //
    }
}
