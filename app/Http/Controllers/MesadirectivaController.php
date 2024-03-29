<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\DiputadosLegislaturaController;
use App\Http\Controllers\LegislaturaController;

class MesadirectivaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $oLegislatura = new LegislaturaController();
        $oDiputadosLegislatura = new DiputadosLegislaturaController();
        $numleg = $oLegislatura->ultimaLegislatura();
        $condiciones = 'cat_diputados.ordenNivel>=1 and cat_diputados.ordenNivel<=3';
        $oDiputadosLegislatura->setOrderBy('cat_diputados.ordenNivel');
        $mesadirectiva=$oDiputadosLegislatura->distritosOcupados($condiciones,$numleg);
        echo json_encode($mesadirectiva);
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($numleg)
    {
        $oDiputadosLegislatura = new DiputadosLegislaturaController();
        $condiciones = 'cat_diputados.ordenNivel>=1 and cat_diputados.ordenNivel<=3';
        $oDiputadosLegislatura->setOrderBy('cat_diputados.ordenNivel');
        $mesadirectiva=$oDiputadosLegislatura->distritosOcupados($condiciones,$numleg);
        echo json_encode($mesadirectiva);
    }


    public function showweb(){
        // Método para mostrarlo en un view
        $oLegislatura = new LegislaturaController();
        $oDiputadosLegislatura = new DiputadosLegislaturaController();
        $numleg = $oLegislatura->ultimaLegislatura();
        $condiciones = 'cat_diputados.ordenNivel>=1 and cat_diputados.ordenNivel<=3';
        $oDiputadosLegislatura->setOrderBy('cat_diputados.ordenNivel');
        $mesadirectiva=$oDiputadosLegislatura->distritosOcupados($condiciones,$numleg);
        return view('/legisladores/juntas',
            [
                'diputados' => $mesadirectiva,
                'titulo' => 'Mesa Directiva'
            ]
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
