<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $modo }} Empleado</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }
        .card:hover {
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
        }
        .form-control {
            border-radius: 8px;
            border-color: #ccc;
        }
        .btn-warning {
            background-color: black;
            border-color: black;
            transition: all 0.3s ease;
        }
        .btn-warning:hover {
            background-color: #26d304;
            border-color: #26d304;
        }
        .btn-danger {
            background-color: black;
            border-color: black;
            transition: all 0.3s ease;
        }
        .btn-danger:hover {
            background-color: #0512ca;
            border-color: #0512ca;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-dark text-white">
                        <h1 class="mb-0">{{ $modo }} Empleado</h1>
                    </div>
                    <div class="card-body">
                        @if (count($errors) > 0)
                            <div class="alert alert-danger" role="alert">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <form method="POST" action="{{ route('empleado.store') }}">
                            @csrf
                            <div class="mb-3">
                                <label for="Nombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" name="Nombre" value="{{ old('Nombre') }}">
                                @error('Nombre')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="Apellido" class="form-label">Apellido</label>
                                <input type="text" class="form-control" name="Apellido" value="{{ old('Apellido') }}">
                                @error('Apellido')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            
                            <div class="mb-3">
                                <label for="Correo" class="form-label">Correo</label>
                                <input type="text" class="form-control" name="Correo" value="{{ old('Correo') }}">
                                @error('Correo')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            
                            <div class="mb-3">
                                <label for="Cargo" class="form-label">Cargo</label>
                                <input type="text" class="form-control" name="Cargo" value="{{ old('Cargo') }}">
                                @error('Cargo')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            
                            <br>
                            <div class="d-grid gap-2">
                                <input class="btn btn-warning text-white" type="submit" value="{{ $modo }} datos">
                                <a class="btn btn-danger" href="{{ url('empleado/') }}">Regresar</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
