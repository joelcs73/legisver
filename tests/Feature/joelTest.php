<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class joelTest extends TestCase
{
    /**
     * A basic feature test example.
     * @test
     * @return void
     */
    function rutaAreas()
    {
        $this->get('/api/catAreas')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaComisiones()
    {
        $this->get('/api/catComisiones')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaDiputados()
    {
        $this->get('/api/catDiputados')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaDistritos()
    {
        $this->get('/api/catDistritos')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaEjerciciosLegislativos()
    {
        $this->get('/api/catEjerciciosLegislativos')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaLegislaturas()
    {
        $this->get('/api/catLegislaturas')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaMesadirectiva()
    {
        $this->get('/api/mesadirectiva')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaPartidosPoliticos()
    {
        $this->get('/api/catPartidospoliticos')
        ->assertStatus(200);
    }

    /** @test */
    function ditupadoslegislatura(){
        $this->get('api/diputadoslegislatura')
        ->assertStatus(200);
    }

    /** @test */
    function diputadoslegislatura2(){
        $this->get('api/diputadoslegislatura/65')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaJuntaDeCoordinacionPolitica()
    {
        $this->get('/api/juntadecoordinacionpolitica')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaJuntaDeTrabajosLegislativos()
    {
        $this->get('/api/juntadetrabajoslegislativos')
        ->assertStatus(200);
    }

    /** @test */
    function rutaFechaSesiones(){
        $this->get('/api/sesiones')
        ->assertStatus(200);
    }

    /** @test */
    function obtenerSesionesPorEjercicio(){
        $this->get('/api/sesiones/1')
        ->assertStatus(200);
    }

    /** @test */
    function obtenerSesionesPorEjercicioLegislatura(){
        $this->get('/api/sesiones/1/65')
        ->assertStatus(200);
    }

    /** @test */
    function sesionesAnexos(){
        $this->get('/api/sesionesanexos')
        ->assertStatus(200);
    }

    /** @test */
    function sesionesMedios(){
        $this->get('/api/sesionesmedios')
        ->assertStatus(200);
    }

    /** @test */
    function diarioDeDebates(){
        $this->get('/api/diariodedebates')
        ->assertStatus(200);
    }

    /** @test */
    function diarioDeDebatesAnexos(){
        $this->get('/api/diariodedebatesanexos')
        ->assertStatus(200);
    }

    /** @test */
    function sumarioLegislativo(){
        $this->get('/api/sumariolegislativo')
        ->assertStatus(200);
    }

    /** @test */
    function sumarioLegislativoPeriodo(){
        $this->get('/api/sumariolegislativo/1')
        ->assertStatus(200);
    }

    /** @test */
    function sumarioLegislativoPeriodoLegislatura(){
        $this->get('/api/sumariolegislativo/1/64')
        ->assertStatus(200);
    }

    /** @test */
    function agendaLegislativa(){
        $this->get('/api/agendalegislativa')
        ->assertStatus(200);
    }

    /** @test */
    function estadisticaslegislativas(){
        $this->get('/api/estadisticaslegislativas')
        ->assertStatus(200);
    }

    /** @test */
    function estadisticaslegislativasPeriodo(){
        $this->get('/api/estadisticaslegislativas/1')
        ->assertStatus(200);
    }

    /** @test */
    function estadisticaslegislativasPeriodoLegislatura(){
        $this->get('/api/estadisticaslegislativas/1/65')
        ->assertStatus(200);
    }
}