<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EjercicioLegislativo extends Model
{
    /*Por default Laravel llamaría a esta tabla periodos,
    a la llave primaria la llamaría id,
    y espera tener los campos de creación y modificación de registro.
    Con estas sentencias personalizamos.*/
    protected $table = 'cat_ejerciciolegislativo';
    protected $primaryKey = 'idEjercicio';
    public $timestamps = false;
}
