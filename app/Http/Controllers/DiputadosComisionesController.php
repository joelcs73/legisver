<?php

namespace App\Http\Controllers;

use App\DiputadosComisiones;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DiputadosComisionesController extends Controller
{

    private $orderby="cat_comisiones.idComision";
    public function setOrderBy($order) { $this->orderby=$order;}
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $oLegislatura = new LegislaturaController();
        $leg = $oLegislatura->ultimaLegislatura();
        $condiciones = 'diputadoslegislatura.status = 1 and cat_comisiones.status = 1';
        $this->diputadoscomisiones($condiciones,$leg);
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
        $dipcomis = new DiputadosComisiones();
        $dipcomis->cargo = $request->input('cargo');
        $dipcomis->idDiputado = $request->input('idDiputado');
        $dipcomis->idComision = $request->input('idComision');
        $dipcomis->idLegislatura = $request->input('idLegislatura');
        $dipcomis->save();
        echo json_encode($dipcomis);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ComisionesDiputados  $comisionesDiputados
     * @return \Illuminate\Http\Response
     */
    public function show($leg)
    {
        $condiciones = 'diputadoslegislatura.status = 1 and cat_comisiones.status = 1';
        $this->diputadoscomisiones($condiciones,$leg);
    }

    public function comisiones($idComision){
        $oLegislatura = new LegislaturaController();
        $leg = $oLegislatura->ultimaLegislatura();
        $condiciones = "diputadoslegislatura.status = 1 and cat_comisiones.status = 1 and cat_comisiones.idComision = $idComision";
        $this->diputadoscomisiones($condiciones,$leg);
    }

    public function comisioneslegislatura($idComision,$leg){
        $condiciones = "diputadoslegislatura.status = 1 and cat_comisiones.status = 1 and cat_comisiones.idComision = $idComision";
        $this->diputadoscomisiones($condiciones,$leg);
    }

    public function diputados($idDiputado){
        $oLegislatura = new LegislaturaController();
        $leg = $oLegislatura->ultimaLegislatura();
        $condiciones = "diputadoslegislatura.status = 1 and cat_comisiones.status = 1 and diputadoslegislatura.idDiputado = $idDiputado";
        $this->diputadoscomisiones($condiciones,$leg);
    }

    public function diputadoslegislatura($idDiputado,$leg){
        $condiciones = "diputadoslegislatura.status = 1 and cat_comisiones.status = 1 and diputadoslegislatura.idDiputado = $idDiputado";
        $this->diputadoscomisiones($condiciones,$leg);
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ComisionesDiputados  $comisionesDiputados
     * @return \Illuminate\Http\Response
     */
    public function edit(ComisionesDiputados $comisionesDiputados)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ComisionesDiputados  $comisionesDiputados
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,  $id)
    {
        $dipcomis = ComisionesDiputados::find($id);
        $dipcomis->cargo = $request->input('cargo');
        $dipcomis->idDiputado = $request->input('idDiputado');
        $dipcomis->idComision = $request->input('idComision');
        $dipcomis->idLegislatura = $request->input('idLegislatura');
        $dipcomis->save();
        echo json_encode($dipcomis); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ComisionesDiputados  $comisionesDiputados
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $dipcomis = DiputadosLegislatura::find($id);
        $dipcomis->delete();
    }

    public function diputadoscomisiones($condiciones,$legislatura){
        // dd($this->orderby);
        $dl = DB::table('diputadoscomisiones')
        ->leftjoin(DB::raw("(select diputadoslegislatura.id, diputadoslegislatura.idLegislatura, diputadoslegislatura.idDiputado,
                diputadoslegislatura.idPartido,
                diputadoslegislatura.status,
                diputadoslegislatura.permanente,
                CONCAT(cat_diputados.nombre,' ',cat_diputados.paterno,' ',cat_diputados.materno) AS nombreDiputado,
                cat_diputados.idDistrito
            FROM cat_diputados LEFT JOIN diputadoslegislatura ON cat_diputados.idDiputado = diputadoslegislatura.idDiputado
            LEFT JOIN cat_legislaturas ON cat_legislaturas.idLegislatura = diputadoslegislatura.idLegislatura
            WHERE diputadoslegislatura.status = 1 and cat_legislaturas.clave = $legislatura
            ORDER BY cat_diputados.idDistrito) AS diputadoslegislatura"), 'diputadoslegislatura.idDiputado', '=', 'diputadoscomisiones.idDiputado')
        ->leftjoin('cat_legislaturas', 'cat_legislaturas.idLegislatura', '=' ,'diputadoslegislatura.idLegislatura')
        ->leftjoin('cat_diputados','diputadoslegislatura.idDiputado','=','cat_diputados.idDiputado')
        ->leftjoin('cat_comisiones', 'cat_comisiones.idComision', '=' ,'diputadoscomisiones.idComision')
        ->leftjoin('cat_partidospoliticos', 'diputadoslegislatura.idPartido', '=', 'cat_partidospoliticos.idPartido')
        ->select(
            'diputadoscomisiones.id as idComision',
            'diputadoslegislatura.idDiputado',
            'diputadoslegislatura.nombreDiputado',
            'cat_diputados.paterno',
            'cat_diputados.materno',
            'cat_diputados.nombre',
            'cat_diputados.foto as fotoDiputado',
            'cat_diputados.extension',
            'cat_diputados.correo',
            'cat_diputados.cvPdf',
            'cat_comisiones.idComision',
            'cat_comisiones.nombre as nombreComision',
            'cat_comisiones.tipo as tipoComision',
            'diputadoscomisiones.cargo as cargoComision',
            'cat_comisiones.archivoProgramaAnual as poaComision',
            'diputadoslegislatura.idPartido',
            'cat_partidospoliticos.nombre AS nombrePartido',
            'cat_partidospoliticos.siglas AS siglasPartido',
            'cat_partidospoliticos.archivoImagen AS logoPartido',
            'cat_legislaturas.idLegislatura',
            'diputadoslegislatura.idDiputado',
            'diputadoslegislatura.status',
            'diputadoslegislatura.permanente',
            'cat_legislaturas.nombre AS legislatura',
            'cat_legislaturas.clave AS numeroLegislatura',
            'cat_diputados.cargo as cargoDiputado',
            'cat_diputados.idDistrito',
            'cat_diputados.suplenteDe',
            'cat_diputados.ordenNivel'
            )
        ->whereRaw($condiciones)
        ->orderByRaw($this->orderby)
        ->get();
        echo json_encode($dl);
        // return $dl;
    }
}
