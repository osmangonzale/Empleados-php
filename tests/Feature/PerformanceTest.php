<?php

namespace Tests\Performance;

use Illuminate\Database\Eloquent\Factories\Factory;
use Tests\TestCase;
use App\Models\Empleado;

class PerformanceTest extends TestCase
{
    public function test_create_employees_performance()
    {
        // Medir el tiempo de ejecución para crear 100 empleados
        $startTime = microtime(true);
        Factory::factoryForModel(Empleado::class)->count(100)->create();
        $endTime = microtime(true);
        $executionTime = $endTime - $startTime;

        // Puedes imprimir el tiempo transcurrido para visualizarlo en la salida de la prueba
        echo "Tiempo de ejecución para crear 100 empleados: " . $executionTime . " segundos";

        // Ajusta el límite de tiempo según el rendimiento esperado
        $this->assertLessThan(11, $executionTime); // Por ejemplo, afirmar que la ejecución tarda menos de 10 segundos
    }
}
