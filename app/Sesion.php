<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sesion extends Model
{
    /*Por default Laravel llamaría a esta tabla sesions,
    a la llave primaria la llamaría id,
    y espera tener los campos de creación y modificación de registro.
    Con estas sentencias personalizamos.*/
    protected $table = 'cat_sesiones';
    protected $primaryKey = 'idSesion';
    public $timestamps = false;
}
