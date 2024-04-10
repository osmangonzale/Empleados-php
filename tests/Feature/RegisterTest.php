<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class RegisterTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_user_can_view_register_form()
    {
        $response = $this->get('/register');

        $response->assertStatus(200); // Verifica que se pueda ver el formulario de registro
        $response->assertViewIs('auth.register'); // Verifica que se esté mostrando la vista de registro
    }
}
