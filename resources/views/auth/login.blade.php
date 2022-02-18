@extends('layouts.layout')

@section('title', 'Conéctate')

@section('head')

    <link rel="stylesheet" href="../css/login.css">
    <script src={{ asset('js/login.js') }} defer></script>

@endsection

@section('body')

    @if (session('status'))
        {{ session('status') }}
    @endif

    <main>

        <h1>Inicia Sesión</h1>
        <img src="/images/logoReecock.png" class="avatar" alt="Logo de Reecock">

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <label for="email">Usuario</label>
            <input type="email" placeholder="Introduce tu email" name="email"
                value="{{ old('email') ? old('email') : '' }}" required>
            @error('email')
                {{ $message }}
            @enderror

            <label for="password">Contraseña</label>
            <input type="password" placeholder="Introduce tu contraseña" name="password"
                value="{{ old('username') ? old('username') : '' }}" required>
            @error('password')
                {{ $message }}
            @enderror

            <input type="submit" value="Méteme">
        </form>

        <a href="{{ route('register') }}">¿No tienes cuenta?</a><br>
        {{-- <a href="{{ route('password.request') }}">¿Has olvidado tu contraseña?</a> --}}

    </main>

@endsection
