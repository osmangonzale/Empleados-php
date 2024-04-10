<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class LoginRedirectTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_root_redirects_to_login()
    {
        $response = $this->get('/');

        $response->assertStatus(302); // Verifica que la respuesta sea un redireccionamiento
        $response->assertRedirect('/login'); // Verifica que se redirija al formulario de inicio de sesión
    }
}
