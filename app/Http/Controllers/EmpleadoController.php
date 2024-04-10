<?php

namespace App\Http\Controllers;

use App\Models\Empleado;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;


class EmpleadoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $datos['empleados'] = Empleado::paginate(5);
        return view('empleado.index', $datos);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $empleado = new Empleado();
        return view('empleado.create', compact('empleado'));
        //return view('empleado.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $campos = [
            'Nombre' => 'required|string|max:100|regex:/^[a-zA-Z ]+$/',
            'Apellido' => 'required|string|max:100|regex:/^[a-zA-Z ]+$/',
            'Correo' => 'required|email|unique:empleados',
            'Cargo' => 'required|string|max:80|regex:/^[a-zA-Z ]+$/',
        ];

        $mensaje = ["required" => "El :attribute es requerido"];

        $validator = Validator::make($request->all(), $campos, $mensaje);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $datosEmpleado = $request->except('_token');
        Empleado::insert($datosEmpleado);

        return response()->json(['message' => 'Empleado agregado con éxito'], 200);
    }


    /**
     * Display the specified resource.
     */
    public function show(Empleado $empleado)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        //
        $empleado = Empleado::findOrFail($id);
        return view('empleado.edit', compact('empleado'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $campos = [
            'Nombre' => ['required', 'string', 'max:100', 'regex:/^[a-zA-Z ]+$/', Rule::unique('empleados')->ignore($id)],
            'Apellido' => 'required|string|max:100|regex:/^[a-zA-Z ]+$/',
            'Correo' => ['required', 'email', Rule::unique('empleados')->ignore($id)],
            'Cargo' => 'required|string|max:80|regex:/^[a-zA-Z ]+$/',
        ];

        $mensaje = ["required" => "El :attribute es requerido"];

        $validator = Validator::make($request->all(), $campos, $mensaje);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        Empleado::where('id', $id)->update($request->except(['_token', '_method']));

        return response()->json(['message' => 'El empleado se ha editado'], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        //
        Empleado::destroy($id);

        return redirect('empleado')->with('mensaje', 'El  empleado se ha eliminado');
    }
}
