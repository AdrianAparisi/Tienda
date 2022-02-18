@extends('layouts.layout')

@section('head')

    <link rel="stylesheet" href={{ asset('css/user.css') }}>
    <script src={{ asset('js/popup.js') }} defer></script>
    <script src={{ asset('js/user.js') }} defer></script>
    <script src="https://kit.fontawesome.com/d3b98ef859.js" crossorigin="anonymous" defer></script>

@endsection

@section('body')
    @include('partials.header')

    <main>
        @yield('main')

    </main>

@endsection
