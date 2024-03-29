<?php

namespace App\Http\Controllers;

use App\JuntaCoordinacionPolitica;
use Illuminate\Http\Request;

class JuntaCoordinacionPoliticaController extends Controller
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
        $condiciones = 'cat_diputados.ordennivel = 0 or cat_diputados.ordenNivel = 4';
        $oDiputadosLegislatura->setOrderBy('cat_partidospoliticos.orden');

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
     * @param  \App\JuntaCoordinacionPolitica  $juntaCoordinacionPolitica
     * @return \Illuminate\Http\Response
     */
    public function show($numleg)
    {
        $oDiputadosLegislatura = new DiputadosLegislaturaController();
        $condiciones = 'cat_diputados.ordennivel = 0 or cat_diputados.ordenNivel = 4';
        $oDiputadosLegislatura->setOrderBy('cat_partidospoliticos.orden');
        $mesadirectiva=$oDiputadosLegislatura->distritosOcupados($condiciones,$numleg);
        echo json_encode($mesadirectiva);
    }

    public function showweb()
    {
        $oLegislatura = new LegislaturaController();
        $oDiputadosLegislatura = new DiputadosLegislaturaController();
        $numleg = $oLegislatura->ultimaLegislatura();
        $condiciones = 'cat_diputados.ordennivel = 0 or cat_diputados.ordenNivel = 4';
        $oDiputadosLegislatura->setOrderBy('cat_partidospoliticos.orden');
        $junta=$oDiputadosLegislatura->distritosOcupados($condiciones,$numleg);
        return view('/legisladores/juntas',
            [
                'diputados' => $junta,
                'titulo' => 'Junta de Coordinación Política'
            ]
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\JuntaCoordinacionPolitica  $juntaCoordinacionPolitica
     * @return \Illuminate\Http\Response
     */
    public function edit(JuntaCoordinacionPolitica $juntaCoordinacionPolitica)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\JuntaCoordinacionPolitica  $juntaCoordinacionPolitica
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, JuntaCoordinacionPolitica $juntaCoordinacionPolitica)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\JuntaCoordinacionPolitica  $juntaCoordinacionPolitica
     * @return \Illuminate\Http\Response
     */
    public function destroy(JuntaCoordinacionPolitica $juntaCoordinacionPolitica)
    {
        //
    }
}
