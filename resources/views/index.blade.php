@extends('layouts.main_layout')


@section('title', 'Inicio')

@section('head')

    <script src="https://kit.fontawesome.com/d3b98ef859.js" crossorigin="anonymous" defer></script>
    <script src={{ asset('js/popup.js') }} defer></script>
    <script src={{ asset('js/index.js') }} defer></script>
    <link rel="stylesheet" href="/css/index.css">

@endsection


@section('main')

    @php
    $sliderHeaders = ['Reecock', 'Reecock', 'Reecock'];
    $sliderContents = ['¿No sabes que elegir?', 'Envíos en 24/48h y 100% discretos', 'Orgasmos más intensos, rápidos y furiosos 9.'];
    @endphp

    <section id="slider">

        @for ($i = 0; $i < 3; $i++)
            <article name="slider" aria-labelledby="slider">
                <div class="bg"></div>
                <div class="contentslide">
                    <h1>{{ $sliderHeaders[$i] }}</h1>
                    <p><span>{{ $sliderContents[$i] }}</span></p>
                </div>
            </article>
        @endfor

    </section>

    <div class="main-content">
        <div class="center-content">
            <section id="max-sold">
                <div class="sold-title">
                    <h1>Juguetes</h1>
                    <h2>Más Vendidos</h2>
                    <span class="blue-line"></span>
                </div>

                <article id="carousel-cards" name="carousel-cards" aria-labelledby="carousel-cards">
                    @forelse ($products as $p)
                        <div class="card">
                            <div class="imgBox">
                                <img src="{{ '/' . $p->product_photo_path . '/' . $p->name . '1.png' }}"
                                    alt="{{ $p->technical_image }}" class="img-product">
                            </div>

                            <div class="contentBox">
                                <h1>{{ $p->name }}</h1>
                                <h2>{{ $p->technical_name }}</h2>
                                <h3>
                                    <span
                                        class="price-before">{{ $p->price }}&#128;</span>{{ $p->price - ($p->price * $p->discount) / 100 }}&#128;
                                </h3>
                                <a href="{{ route('productos.show', ['product' => $p->id]) }}"
                                    class="buy">Cómpralo YA un {{$p->name}}</a>
                            </div>
                        </div>
                    @empty
                        No Hay Productos
                    @endforelse
                </article>

                <div class="load_more">
                    <a href="{{ route('productos.index') }}" class="btn_load_more">Ver todos los productos</a>
                </div>
            </section>

            <section id="content-sections">
                <div class="title-sections">
                    <h1>Nuestra</h1>
                    <h2>Galería</h2>
                    <span class="blue-line"></span>
                </div>

                <div class="gallery-sections">
                    @forelse ($categories as $c)
                        <div class="gallery_item">
                            <img src="{{ '/images/galeria/' . $c->name . '.webp' }}" alt="{{ $c->name }}"
                                class="gallery_img">
                            <h1 class="gallery_title">{{ $c->name }}</h1>
                        </div>

                    @empty
                        No hay categorías
                    @endforelse
                </div>
            </section>

            <section id="instagram">
                <div class="instagram-title">
                    <h1>Síguenos en Instagram</h1>
                    <h2>@Reecock69</h2>
                    <span class="blue-line"></span>
                </div>

                <article id="grid-images" name="grid-images" aria-labelledby="grid-images">
                    @php
                        $path = public_path('images/instagram/');
                        $aux = scandir($path);
                        $images = [];

                        for ($i = 2; $i < count($aux); $i++) {
                            array_push($images, $aux[$i]);
                        }
                    @endphp

                    @for ($i = 0; $i < count($images); $i++)
                        <div class="image-container">
                            <img src="{{ asset('images/instagram/' . $images[$i]) }}" alt="{{'foto' .  $i }}"
                                class="image">
                                <span class="fas fa-external-link-square-alt insta-link"></span>
                        </div>
                    @endfor
                </article>
            </section>
        </div>
    </div>


@endsection
