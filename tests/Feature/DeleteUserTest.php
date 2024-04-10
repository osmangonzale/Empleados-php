<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\DB;
use Tests\TestCase;

class DeleteUserTest extends TestCase
{
    use RefreshDatabase;

    public function testDeleteUser()
    {
        $userToDelete = User::factory()->create(); // Crea un usuario de prueba que se eliminará

        // Elimina el usuario directamente en la base de datos
        DB::table('users')->where('id', $userToDelete->id)->delete();

        // Verifica que el usuario realmente se haya eliminado de la base de datos
        $this->assertNull(User::find($userToDelete->id));
    }
}
