<?php

namespace App\Http\Controllers;

use App\SesionesMedios;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SesionesMediosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $medios = SesionesMedios::get();
        return json_encode($medios);
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
        $medio = new SesionesMedios();
        $medio->archivoAudio = $request->input('archivoAudio');
        $medio->archivoVideo = $request->input('archivoVideo');
        $medio->idSesion = $request->input('idSesion');
        $medio->save();
        echo json_encode($medio);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SesionesMedio  $sesionesMedio
     * @return \Illuminate\Http\Response
     */
    public function show($idSesion)
    {
        $medios = DB::table('sesionesmedios')
        ->whereRaw("sesionesmedios.idSesion = $idSesion")
        ->get();
        return json_encode($medios);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SesionesMedio  $sesionesMedio
     * @return \Illuminate\Http\Response
     */
    public function edit(SesionesMedio $sesionesMedio)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SesionesMedio  $sesionesMedio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SesionesMedio $sesionesMedio)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SesionesMedio  $sesionesMedio
     * @return \Illuminate\Http\Response
     */
    public function destroy(SesionesMedio $sesionesMedio)
    {
        //
    }
}
