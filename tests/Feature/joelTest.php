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
        $this->get('/api/areas')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaComisiones()
    {
        $this->get('/api/comisiones')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaDiputados()
    {
        $this->get('/api/diputados')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaDistritos()
    {
        $this->get('/api/distritos')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaLegislaturas()
    {
        $this->get('/api/legislaturas')
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
        $this->get('/api/partidospoliticos')
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

    /** @test*/
    function rutaLegisladores()
    {
        $this->get('/legisladores')
        ->assertStatus(200);
    }

    /** @test*/
    function rutaLegisladoresEdita()
    {
        $this->get('/legisladores/edita/1')
        ->assertStatus(200);
    }
}
