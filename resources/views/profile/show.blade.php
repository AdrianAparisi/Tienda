@extends('layouts.user_layout')


@section('title', $user->name . ' ' . $user->surname)

@section('head')

    <script src="https://kit.fontawesome.com/d3b98ef859.js" crossorigin="anonymous" defer></script>
    <script src={{ asset('js/user.js') }} defer></script>
    <link rel="stylesheet" href="/css/user.css">

@endsection

@section('main')
    <section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">
                <div class="perfil-usuario-avatar" id="openAddAvatar">
                    <img src="images/128_16.png" alt="img-avatar">
                    <button type="button" class="botonAvatar"><span class="far fa-image"></span></button>
                </div>
                <div id="addContainerAvatar" class="addContainerAvatar">
                    <div class="modalAvatar">
                        <div id="btnCloseAvatar">
                            <span class="fas fa-times-circle"></span>
                        </div>
                        <h1>Avatar</h1>
                        <form action="" id="{{ 'user/' . Auth::user()->id }}"
                            onsubmit="apiCall(event, this, toUpdate(), bodyForm(this))" method="post">
                            <input type="file" onblur="save(event)">
                            <input type="submit" class='btnAvatar' onblur="save(event)" value="Aceptar">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="perfil-usuario-body">
            <div class="perfil-usuario-bio">
                <input class="titulo" type="text" onblur="save(event)"
                    value="{{ $user->name . ' ' . $user->surname }}">
            </div>
            <div class="perfil-usuario-datos">
                <div class="centrarDatos">
                    <form action="" id="{{ 'user/' . Auth::user()->id }}" method="post">
                        <div>
                            <span class="icono fas fa-map-signs"></span> <input type="text" value="Calle fafasfa"
                                onblur="if(validate()) apiCall(event, this.closest('form'), toUpdate(), bodyForm(this.closest('form')))">
                        </div>
                        <div>
                            <span class="icono fas fa-map-signs"></span> <input type="email"
                                onblur="if(validate()) apiCall(event, this.closest('form'), toUpdate(), bodyForm(this.closest('form')))"
                                value="{{ $user->email }}">
                        </div>
                        <div>
                            <span class="icono fas fa-map-marker-alt"></span> <input type="text"
                                onblur="if(validate()) apiCall(event, this.closest('form'), toUpdate(), bodyForm(this.closest('form')))"
                                value="Valencia">
                        </div>
                        <div>
                            <span class="icono fas fa-calendar-alt"></span> <input type="date"
                                onblur="if(validate()) apiCall(event, this.closest('form'), toUpdate(), bodyForm(this.closest('form')))"
                                value="{{ $user->birthday }}">
                        </div>
                    </form>
                    <div>
                        <div id="openAddDirection">
                            <span class="fas fa-circle-plus buttonDirection">Añadir Dirección</span>
                        </div>
                    </div>
                    <div id="addContainerDirection" class="addContainerDirection">
                        <div class="modalDirection">
                            <div id="btnCloseDirection">
                                <span class="fas fa-times-circle"></span>
                            </div>
                            <h1>Añadir Dirección</h1>
                            <form action="id= {{ 'directions/' . Auth::user()->id }}"
                                onsubmit="apiCall(event, this, toCreate(), bodyForm(this))" method="post">

                                <label for="door">Puerta</label>
                                <input type="number" name="door" id="door" required placeholder="Nº Puerta">

                                <label for="direction">Dirección</label>
                                <input type="text" name="direction" id="direction" required placeholder="Dirección">

                                <label for="city">Ciudad</label>
                                <input type="text" name="text" id="city" required placeholder="Ciudad">

                                <label for="country">Pais</label>
                                <input type="text" name="country" id="country" required placeholder="Pais">

                                <label for="state">Estado</label>
                                <input type="text" name="state" id="state" required placeholder="Estado">

                                <label for="cp">CP</label>
                                <input type="number" name="cp" id="cp" required placeholder="Codigo Postal">

                                <label for="phone">Numero Tlf.</label>
                                <input type="phone" name="phone" id="phone" required placeholder="Numero de Telefono">

                                <button type="submit " name="añadir_direccion" onclick="addDir(event)"
                                    id="añadir_direccion">
                                    <p>Añadir Dirección</p>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>


            </div>
            <div class="perfil-usuario-footer">
                <a class="button-footer" href="#">Lista de deseos</a>
                <a class="button-footer" href="#">Pedidos</a>
                <a class="button-footer" href="#">Carrito</a>
            </div>
        </div>
    </section>
@endsection
