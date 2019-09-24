<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class relacionesTest extends TestCase
{


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

    /** @test */
    function rutaJuntaDeCoordinacionPolitica(){
        $this->get('/legisladores/juntadecoordinacionpolitica')
        ->assertStatus(200);
    }

    /** @test */
    function rutaJuntaDeTrabajosLegislativos(){
        $this->get('/legisladores/juntadetrabajoslegislativos')
        ->assertStatus(200);
    }

    /** @test */
    function rutaMesaDirectiva(){
        $this->get('/legisladores/mesadirectiva')
        ->assertStatus(200);
    }

}
