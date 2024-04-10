<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Proyecto') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Styles -->
    <style>
        /* Navbar background color and link color */
        .navbar {
            background-color: #333333; /* Cambio a fondo oscuro */
        }

        .navbar-nav .nav-link {
            color: #ffffff; /* Cambio a texto blanco */
        }

        /* Active link color */
        .navbar-nav .nav-link.active {
            color: #3ba311;
        }

        /* Button styles */
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        /* Form styles */
        .form-control {
            border-color: #cccccc;
        }

        /* Footer styles */
        footer {
            background-color: #333333; /* Cambio a fondo oscuro */
            color: #ffffff; /* Cambio a texto blanco */
            padding: 20px 0;
            text-align: center;
        }

        /* Custom styles for content */
        .content-container {
            margin-top: 20px;
            padding: 20px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            background-color: #f8f9fa;
        }

        .card {
            margin-bottom: 20px;
        }

        .card-header {
            background-color: #007bff;
            color: #ffffff;
        }

        .card-body {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
    <div id="app">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark shadow-sm"> <!-- Cambio a tema oscuro -->
            <div class="container">
                <!-- Navbar Brand -->
                <a class="navbar-brand" href="{{ url('/') }}">
                    Proyecto <!-- Cambio a 'Proyecto' en lugar de 'Laravel' -->
                </a>
                
                <!-- Navbar Toggler -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Navbar Collapse -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link{{ request()->is('empleado*') ? ' active' : '' }}" href="{{ route('empleado.index') }}">Empleados</a> <!-- Indicador activo para Empleados -->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link{{ request()->is('laravel*') ? ' active' : '' }}" href="{{ route('laravel.index') }}">Laravel</a> <!-- Indicador activo para Laravel -->
                        </li>
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="py-4">
            <div class="container">
                <!-- Content Container -->
                <div class="content-container">
                    @yield('content')
                </div>
            </div>
        </main>

        <!-- Footer -->
        <footer>
            <div class="container">
                &copy; {{ date('Y') }} Proyecto. All rights reserved. <!-- Cambio a 'Proyecto' -->
            </div>
        </footer>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
