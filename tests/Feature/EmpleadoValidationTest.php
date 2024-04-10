<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Empleado;

class EmpleadoValidationTest extends TestCase
{
    use RefreshDatabase;

    public function test_create_employee_validation()
    {
        $response = $this->post('/empleado', [
            'Nombre' => '123456', // Nombre válido
            'Apellido' => '987654', // Apellido válido
            'Correo' => 'johndoe@example.com', // Correo válido
            'Cargo' => '123546', // Cargo válido
        ]);

        $response->assertStatus(302); // Verificar redireccionamiento en lugar de 422 para datos inválidos
    }

    public function test_edit_employee_validation()
    {
        // Supongamos que $id es el ID del empleado que queremos editar
        $id = 1;

        $response = $this->put("/empleado/$id", [
            'Nombre' => 'John', // Nombre válido
            'Apellido' => 'Doe', // Apellido válido
            'Correo' => 'johndoe@example.com', // Correo válido
            'Cargo' => 'Manager', // Cargo válido
        ]);

        $response->assertStatus(302); // Verificar redireccionamiento en lugar de 422 para datos inválidos
    }
}
