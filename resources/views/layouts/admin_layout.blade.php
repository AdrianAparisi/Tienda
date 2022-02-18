@extends('layouts.layout')

@section('head')

    <link rel="stylesheet" href={{ asset('css/admin.css') }}>
    <script src={{ asset('js/popup.js') }} defer></script>
    <script src={{ asset('js/admin.js') }} defer></script>
    <script src="https://kit.fontawesome.com/d3b98ef859.js" crossorigin="anonymous" defer></script>

@endsection

@section('body')
    @include('partials.admin_header')

    <main>
        @yield('main')
    </main>
@endsection
