<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSesionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sesiones', function (Blueprint $table) {
            $table->charset = 'utf8';
            $table->collation = 'utf8_general_ci';
            $table->bigIncrements('id');
            $table->date('fecha');
            $table->string('hora',5);
            $table->integer('idEjercicio');
            $table->integer('idPeriodo');
            $table->integer('idSesion');
            $table->integer('idLegislatura');
            $table->integer('activo')->default(1);
            $table->integer('numeroGaceta')->nullable();
            $table->string('archivoGaceta',100)->nullable()->default('');
            $table->string('archivoVersionEstenografica',100)->nullable()->default('');
            $table->string('archivoActa',100)->nullable()->default('');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sesiones');
    }
}