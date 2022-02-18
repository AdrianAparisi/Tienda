@extends('layouts.main_layout')

@section('title', $product->name)

@section('head')

    <link rel="stylesheet" href="../css/product.css">
    <script src="https://kit.fontawesome.com/d3b98ef859.js" crossorigin="anonymous"></script>
    <script src="{{ asset('js/user.js') }}"></script>

@endsection

@section('main')

    <div class="centrar">
        <section>
            <div class="containerGaleriaProducto">

                @php
                    $path = public_path('images/' . $product->name . '/');
                    $aux = scandir($path);
                    $images = [];

                    for ($i = 2; $i < count($aux); $i++)
                        array_push($images, $aux[$i]);
                @endphp

                <ul class="thumbnails">
                    @for ($i = 0; $i < count($images); $i++)
                        <li>
                            <a href={{ '#slide' . $i }}>
                                <img src="{{ asset('images/' . $product->name . '/' . $images[$i]) }}"
                                    alt="{{ $product->technical_name }}">
                            </a>
                        </li>
                    @endfor
                </ul>

                <ul class="slides">
                    @for ($i = 0; $i < count($images); $i++)
                        <li id="{{ 'slide' . $i }}">
                            <img src="{{ asset('images/' . $product->name . '/' . $images[$i]) }}"
                                alt="{{ $product->technical_name }}">
                        </li>
                    @endfor
                </ul>
            </div>
        </section>

        <div class="containerAside">
            <aside>
                <h1 class="nameProduct">{{ $product->name }}</h1>
                <p class="subNombre">{{ $product->technical_name }}</p>
                <p class="price">{{ $product->price - (($product->price * $product->discount) / 100) }}€</p>

                <div class="containerBtnCompra">
                    <button id="{{ $product->id }}" class="btnComprar" onclick="addCart(event)">Añadir al
                        carrito</button>
                    <span class="far fa-heart fa-2x"></span>
                </div>

                <p class="envio">Compra ahora y <span id="detalles">recíbelo GRATIS</span> en 24/48h laborables.
                </p>

                <div class="pagos">
                    <span class="fab fa-cc-apple-pay fa-2x"></span>
                    <span class="fab fa-cc-paypal fa-2x"></span>
                    <span class="fab fa-cc-visa fa-2x"></span>
                    <span class="fab fa-cc-mastercard fa-2x"></span>
                </div>
            </aside>
        </div>
    </div>
    <section class="descProduct">
        <h1>Descripción de {{ $product->name }}</h1>

        <p>{{ $product->description }}</p>
    </section>

@endsection
