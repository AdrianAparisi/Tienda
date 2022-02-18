@extends('layouts.layout')

@section('body')

    @include('partials.header')

    <main id="main">
        @yield('main')
    </main>

    @include('partials.footer')

@endsection
