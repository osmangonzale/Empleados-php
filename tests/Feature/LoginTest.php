<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class LoginTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_user_can_view_login_form()
    {
        $response = $this->get('/login');

        $response->assertStatus(200); // Verifica que se pueda ver el formulario de inicio de sesión
        $response->assertViewIs('auth.login'); // Verifica que se esté mostrando la vista de inicio de sesión
    }
}
