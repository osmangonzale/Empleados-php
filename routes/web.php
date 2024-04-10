<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmpleadoController;

Route::get('/', function () {
    return redirect('/login');
});

// Rutas protegidas por el middleware auth
Route::middleware(['auth'])->group(function () {
    // Ruta para mostrar el formulario de creación de empleado
    Route::get('empleado/create', [EmpleadoController::class, 'create'])
        ->name('empleado.create');

    // Ruta para procesar el formulario de creación de empleado (POST)
    Route::post('empleado', [EmpleadoController::class, 'store'])
        ->name('empleado.store');

    // Resto de las rutas generadas por el método resource
    Route::resource('empleado', EmpleadoController::class)->except(['create', 'store']);

    // Ruta para la página de Laravel (cambia 'laravel.index' por el nombre de tu vista o controlador)
    Route::get('/laravel', function () {
        return view('laravel.index');
    })->name('laravel.index');

    Route::get('/home', [EmpleadoController::class, 'index'])->name('home');
});

Auth::routes();
