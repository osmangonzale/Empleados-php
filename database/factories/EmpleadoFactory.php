<?php

// database/factories/EmpleadoFactory.php

namespace Database\Factories;

use App\Models\Empleado;
use Illuminate\Database\Eloquent\Factories\Factory;

class EmpleadoFactory extends Factory
{
    protected $model = Empleado::class;

    public function definition()
    {
        return [
            'Nombre' => $this->faker->name,
            'Apellido' => $this->faker->lastName,
            'Correo' => $this->faker->unique()->safeEmail,
            'Cargo' => 'Developer',
        ];
    }
}
