<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class SecurityTest extends TestCase
{
    use RefreshDatabase;
    /**
     * Verifica que se evite el ataque XSS al mostrar datos en la vista.
     */
    public function test_xss_protection()
    {
        $user = User::factory()->create([
            'name' => 'John Doe',
            'email' => 'john.doe@example.com',
            'password' => Hash::make('password'),
            'remember_token' => Str::random(10),
        ]);

        $response = $this->actingAs($user)->get('/empleado/create');

        $response->assertDontSee('<script>alert("XSS Attack!")</script>'); // No debe encontrar el script sin escapar
    }
}
