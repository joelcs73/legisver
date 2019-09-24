<?php

namespace App\Http\Controllers;

use App\SesionesAnexos;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SesionesAnexosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $anexos = SesionesAnexos::get();
        return json_encode($anexos);
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
        $anexo = new SesionesAnexos();
        $anexo->descripcion = $request->input('descripcion');
        $anexo->archivoAnexo = $request->input('archivoAnexo');
        $anexo->idSesion = $request->input('idSesion');
        $anexo->save();
        echo json_encode($anexo);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SesionAnexo  $sesionAnexo
     * @return \Illuminate\Http\Response
     */
    public function show($idSesion)
    {
        $anexos = DB::table('sesionesanexos')
        ->whereRaw("sesionesanexos.idSesion = $idSesion")
        ->get();
        return json_encode($anexos);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SesionAnexo  $sesionAnexo
     * @return \Illuminate\Http\Response
     */
    public function edit(SesionAnexo $sesionAnexo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SesionAnexo  $sesionAnexo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $anexo = SesionesAnexos::find($id);
        $anexo->descripcion = $request->input('descripcion');
        $anexo->archivoAnexo = $request->input('archivoAnexo');
        $anexo->idSesion = $request->input('idSesion');
        $anexo->save();
        echo json_encode($anexo);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SesionAnexo  $sesionAnexo
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $anexo = SesionesAnexos::find($id);
        $anexo->delete();
    }
}
