<?php

namespace App\Http\Controllers;

use App\DiarioDeDebatesAnexos;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class DiarioDeDebatesAnexosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $anexos = DiarioDeDebatesAnexos::get();
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
        $anexo = new DiarioDeDebatesAnexos();
        $anexo->descripcion = $request->input('descripcion');
        $anexo->archivoAnexo = $request->input('archivoAnexo');
        $anexo->idDiario = $request->input('idDiario');
        $anexo->save();
        echo json_encode($anexo);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\DiarioDeDebatesAnexos  $diarioDeDebatesAnexos
     * @return \Illuminate\Http\Response
     */
    public function show($idDiario)
    {
        $anexos = DB::table('diariodedebatesanexos')
        ->whereRaw("diariodedebatesanexos.idDiario = $idDiario")
        ->get();
        return json_encode($anexos);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\DiarioDeDebatesAnexos  $diarioDeDebatesAnexos
     * @return \Illuminate\Http\Response
     */
    public function edit(DiarioDeDebatesAnexos $diarioDeDebatesAnexos)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\DiarioDeDebatesAnexos  $diarioDeDebatesAnexos
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $anexo = DiarioDeDebatesAnexos::find($id);
        $anexo->descripcion = $request->input('descripcion');
        $anexo->archivoAnexo = $request->input('archivoAnexo');
        $anexo->idDiario = $request->input('idDiario');
        $anexo->save();
        echo json_encode($anexo);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\DiarioDeDebatesAnexos  $diarioDeDebatesAnexos
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $anexo = DiarioDeDebatesAnexos::find($id);
        $anexo->delete();
    }
}
