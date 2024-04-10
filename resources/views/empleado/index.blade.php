@extends('layouts.app')

@section('content')
<div class="container">

@if (session()->has('mensaje'))
    <div class="alert alert-success">
        {{ session('mensaje') }}
    </div>
@endif

<div class="card mb-4">
    <div class="card-header bg-dark text-white">
        <h3 class="mb-0">Lista de Empleados</h3>
    </div>
    <div class="card-body">
        <a href="{{ url('empleado/create') }}" class="btn btn-success mb-3">Registrar Nuevo Empleado</a>

        <div class="table-responsive">
            <table class="table table-dark table-striped table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th class="text-center">#</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellido</th>
                        <th class="text-center">Correo</th>
                        <th class="text-center">Cargo</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($empleados as $empleado)
                    <tr>
                        <td class="text-center">{{ $empleado->id }}</td>
                        <td>{{ $empleado->Nombre }}</td>
                        <td>{{ $empleado->Apellido }}</td>
                        <td>{{ $empleado->Correo }}</td>
                        <td>{{ $empleado->Cargo }}</td>
                        <td class="text-center">
                            <a href="{{ url('/empleado/'.$empleado->id.'/edit') }}" class="btn btn-warning btn-sm">
                                Editar
                            </a>
                            <form action="{{ url('/empleado/'.$empleado->id) }}" class="d-inline" method="post">
                                @csrf
                                {{ method_field('DELETE') }}
                                <button class="btn btn-danger btn-sm" type="submit" onclick="return confirm('¿Quieres Borrar?')">Borrar</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        {!! $empleados->links() !!}
    </div>
</div>
</div>
@endsection
