@extends('layouts.layout')

@section('title', 'Registro')

@section('head')

    <link rel="stylesheet" href="../css/register.css">
    <script src={{ asset('js/register.js') }} defer></script>

@endsection

@section('body')

    <main>

        <img src="../images/logoReecock.png" class="avatar" alt="Logo de Reecock">
        <h1>Registrarse</h1>

        <form method="POST" action="{{ route('register') }}" onsubmit="validateForm(event)">
            @csrf

            <label for="name">Nombre</label>
            <input type="text" name="name" id="name" placeholder="Introduce tus apellidos"
                value="{{ old('name') ? old('name') : '' }}">
            <p id="name_p">
                @error('name')
                    {{ $message }}
                @enderror
            </p>

            <label for="surname">Apellidos</label>
            <input type="text" name="surname" id="surname" placeholder="Introduce tus apellidos"
                value="{{ old('surname') ? old('surname') : '' }}">
            <p id="surname_p">
                @error('surname')
                    {{ $message }}
                @enderror
            </p>

            <label for="birthday">Fecha de nacimiento</label>
            <input type="date" name="birthday" id="birthday"
                value="{{ old('birthday') ? old('birthday') : '' }}" required>
            <p id="birthday_p">
                @error('birthday')
                    {{ $message }}
                @enderror
            </p>

            <label for="nif">DNI / NIF</label>
            <input type="text" name="nif" id="nif" placeholder="Introduce tu DNI o NIF"
                value="{{ old('nif') ? old('nif') : '' }}" required>
            <p id="nif_p">
                @error('nif')
                    {{ $message }}
                @enderror
            </p>

            <label for="email">Email</label>
            <input type="email" name="email" id="email" placeholder="Introduce tus apellidos"
                value="{{ old('email') ? old('email') : '' }}">
            <p id="email_p">
                @error('email')
                    {{ $message }}
                @enderror
            </p>

            <label for="password">Contraseña</label>
            <input type="password" name="password" id="password" placeholder="Introduce tus apellidos"
                value="{{ old('password') ? old('password') : '' }}">
            <p id="password_p">
                @error('password')
                    {{ $message }}
                @enderror
            </p>

            <label for="password_confirmation">Repite la Contraseña</label>
            <input type="password" name="password_confirmation" id="password_confirmation"
                placeholder="Introduce tus apellidos"
                value="{{ old('password_confirmation') ? old('password_confirmation') : '' }}">
            <p id="password_confirmation_p">
                @error('password_confirmation')
                    {{ $message }}
                @enderror
            </p>

            <label for="terms" class="terminos"><input type="checkbox" name="terms" id="terms"
                    {{ old('terms') ? old('terms') : 'checked' }}> Acepto los <a
                    href="{{ route('terms.show') }}">términos</a> y <a
                    href="{{ route('policy.show') }}">condiciones</a>.</label>
            <p id="terms_p">
                @error('terms')
                    {{ $message }}
                @enderror
            </p>

            <input type="submit" value="Registrarse" class="btn-envio">

        </form>
        <a href="{{ route('login') }}">¿Ya tienes cuenta?</a>

    </main>

@endsection
