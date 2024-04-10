<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\User;

class CredentialUserTest extends TestCase
{
    use RefreshDatabase; // Reinicia la base de datos después de cada prueba

    public function testUserCanLogin()
    {
        $user = User::factory()->create([
            'email' => 'test@example.com',
            'password' => bcrypt('password'), // Encripta la contraseña 'password'
        ]);

        $response = $this->post('/login', [
            'email' => 'test@example.com',
            'password' => 'password',
        ]);

        $response->assertRedirect('/home'); // Verifica que se redireccione correctamente a la página de inicio
        $this->assertAuthenticatedAs($user); // Verifica que el usuario esté autenticado
    }

    public function testUserCannotLoginWithIncorrectPassword()
    {
        $user = User::factory()->create([
            'email' => 'test@example.com',
            'password' => bcrypt('password'),
        ]);

        $response = $this->post('/login', [
            'email' => 'test@example.com',
            'password' => 'incorrect_password', // Contraseña incorrecta
        ]);

        $response->assertSessionHasErrors('email'); // Verifica que se muestre un error en la sesión
        $this->assertGuest(); // Verifica que el usuario no esté autenticado
    }
}
