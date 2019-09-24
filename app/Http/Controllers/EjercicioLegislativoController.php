<?php

namespace App\Http\Controllers;

use App\EjercicioLegislativo;
use Illuminate\Http\Request;

class EjercicioLegislativoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ejercicios = EjercicioLegislativo::get();
        echo json_encode($ejercicios);
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
        $ejercicios = new EjercicioLegislativo();
        $ejercicios->nombre = $request->input('nombre');
        $ejercicios->save();
        echo json_encode($ejercicios);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\EjercicioLegislativo  $ejercicioLegislativo
     * @return \Illuminate\Http\Response
     */
    public function show(EjercicioLegislativo $ejercicioLegislativo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\EjercicioLegislativo  $ejercicioLegislativo
     * @return \Illuminate\Http\Response
     */
    public function edit(EjercicioLegislativo $ejercicioLegislativo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\EjercicioLegislativo  $ejercicioLegislativo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idEjercicio)
    {
        $ejercicios=EjercicioLegislativo::find($idEjercicio);
        $ejercicios->nombre=$request->input('nombre');
        $ejercicios->save();
        echo json_encode($ejercicios);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\EjercicioLegislativo  $ejercicioLegislativo
     * @return \Illuminate\Http\Response
     */
    public function destroy(EjercicioLegislativo $ejercicioLegislativo)
    {
        //
    }
}
