@extends('layouts.main_layout')


@section('title', 'Inicio')

@section('head')

    <script src="https://kit.fontawesome.com/d3b98ef859.js" crossorigin="anonymous" defer></script>
    <script src="{{ asset('js/index.js') }}" defer></script>
    <script src="{{ asset('js/popup.js') }}" defer></script>
    <link rel="stylesheet" href="{{ asset('css/header.css') }}">
    <link rel="stylesheet" href="{{ asset('css/products_index.css') }}">

@endsection


@section('main')
    <div id="img-content">
        <img src="images/Slider1.webp" alt="imagen 1">
        <h1 class="texto">Reecock</h1>
    </div>
    <!--Contenido-->

    <div class="main-content">
        <div class="center-content">

            <section>
                <div class="barra-container">
                    <div class="container-buscador">
                        <span class="fa fa-search icon"></span>
                        <input type="search" id="search" onkeyup="filter(event)" placeholder="Buscar..." />
                    </div>
                    <div class="filtro" name="Filtro">
                        <select name="categories">
                            <option hidden value="Filtrar">Filtrar</option>
                            <option value="Juguetes">Juguetes</option>
                            <option value="Complementos">Complementos</option>
                            <option value="Vibradores">Vibradores</option>
                            <option value="Succionadores">Succionadores</option>
                            <option value="Bolas Chinas">Bolas Chinas</option>
                            <option value="Para el pene">Para el pene</option>
                            <option value="Sexo anal">Sexo anal</option>
                            <option value="Fetiches">Fetiches</option>
                            <option value="Lubricantes">Lubricantes</option>
                            <option value="Lencería">Lencería</option>
                            <option value="Salud y preservativos">Salud y preservativos</option>
                            <option value="Estimulantes">Estimulantes</option>
                            <option value="Destacados">Destacados</option>
                            <option value="Para parejas">Para parejas</option>
                        </select>
                    </div>
                </div>

                <article id="carousel-cards">
                    @forelse ($products as $p)
                        <div class="card">
                            <div class="imgBox">
                                <img src="{{ '/' . $p->product_photo_path . '/' . $p->name . '1.png' }}"
                                    alt="{{ $p->technical_image }}" class="img-product">
                            </div>

                            <div class="contentBox">
                                <h1 class="name">{{ $p->name }}</h1>
                                <h2>{{ $p->technical_name }}</h2>
                                <h4>
                                    <span
                                        class="price-before">{{ $p->price }}&#128;</span>{{ $p->price - ($p->price * $p->discount) / 100 }}&#128;
                                </h4>
                                <a href="{{ route('productos.show', ['product' => $p->id]) }}"
                                    class="buy">Cómpralo YA</a>
                            </div>
                        </div>
                    @empty
                        No Hay Productos
                    @endforelse
                </article>

                <div class="load_more">
                    <button class="btn_load_more">CARGAR MÁS</button>
                </div>
            </section>

        </div>
    </div>
@endsection
