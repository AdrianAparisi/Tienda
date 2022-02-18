@extends('layouts.info_layout')

@section('title', 'Conéctate')

@section('head')

    <script src="https://kit.fontawesome.com/d3b98ef859.js" crossorigin="anonymous" defer></script>

    <link rel="stylesheet" href="../css/faq.css">

@endsection

@section('main')
    <h1 class="title">Preguntas Frecuentes de Reecock</h1>

    <article>
        <section class="first">
            <div class="faq-collapsible">
                <h1 class="question">¿Es seguro comprar en Reecock?</h1>
                <div class="arrow-container">
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
            <div class="faq-answer">
                <p>
                    Reecock nunca tendrá acceso, ni almacenará, tus datos bancarios o de tarjetas. Además, todo el
                    proceso de compra está encriptado con certificados SSL de 256-bits (seguridad de grado militar).
                </p>
            </div>
        </section>

        <section>
            <div class="faq-collapsible">
                <h3 class="question">Me preocupa la discreción...</h3>
                <div class="arrow-container">
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
            <div class="faq-answer">
                <p>-Realizamos los envíos en paquetes 100% discretos.</p>
                <p>-Enviamos cajas sin marcas, dentro de bolsas de transporte opacas.</p>
            </div>
        </section>

        <section>
            <div class="faq-collapsible">
                <h3 class="question">¿Los precios incluyen impuestos?</h3>
                <div class="arrow-container">
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
            <div class="faq-answer">
                <p>
                    Sí, el I.V.A. correspondiente según la legislación española va incluido en todos los precios de
                    los productos que ofrecemos, así como en los gastos de envío..
                </p>
            </div>
        </section>

        <section>
            <div class="faq-collapsible">
                <h3 class="question">¿Hay importe mínimo de compra?</h3>
                <div class="arrow-container">
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
            <div class="faq-answer">
                <p>
                    No, no hay importe mínimo en compra, puedes adquirir lo que desees. Eso sí, puede que algunos
                    códigos promocionales pueden estar sujetos a compras mínimas.
                </p>
            </div>
        </section>

        <section>
            <div class="faq-collapsible">
                <h3 class="question">¿Como debo utilizar los productos?</h3>
                <div class="arrow-container">
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
            <div class="faq-answer">
                <p>
                    Cada producto tiene sus propias instrucciones para que sepas cómo utilizarlos adecuadamente. Así
                    mismo, recomendamos el uso de lubricantes con muchos de los productos que vendemos.
                </p>
            </div>
        </section>

        <section>
            <div class="faq-collapsible">
                <h3 class="question">¿Puedo hacer una devolución?</h3>
                <div class="arrow-container">
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
            <div class="faq-answer">
                <p>
                    Por supuesto, siempre que el producto no esté abierto ni desprecintado tienes 365 días naturales
                    para devolverlo. Para más información sobre las devoluciones puedes consultar la página de
                    devoluciones.
                </p>
            </div>
        </section>
    </article>

    <script>
        let containers = document.querySelectorAll('section')

        containers.forEach(element => {
            element.onclick = function() {
                element.querySelector('.faq-answer').classList.toggle('open');
                element.querySelector('.question').classList.toggle('active');
                element.querySelector('.arrow-container').classList.toggle('up');
            };
        });
    </script>

@endsection
