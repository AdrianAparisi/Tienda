<header>
    <div class="containerReecock">
        <a href="#main"><img src="{{ asset('images/logoReecock.png') }}" alt="logo de reecock"
                class="logo"></a>
        <div class="reecock"><a href="{{ route('index') }}">Reecock</a></div>
    </div>

    <nav>
        <div class="navMovil">
            <ul>
                <li class="menu-item">
                    <div id="openUser">
                        <span class="fas fa-user"></span>
                    </div>

                    <div id="modal_container" class="modal-container">
                        <div class="modal">
                            <div id="btnClose">
                                <span class="fas fa-times-circle"></span>
                            </div>
                            <h1>Reecock Sesión</h1>
                            <div class="centrarSesion">
                                @if (!Auth::check())
                                    <a class='btnSesion' href="{{ route('login') }}">Iniciar Sesión</a>
                                    <a class='btnSesion' href="{{ route('register') }}">Registrarse</a>
                                @else
                                    @if (Auth::user()->is_admin)
                                        <a class='btnSesion' href="{{ route('admin.products') }}">Administrar</a>
                                    @else
                                        <a class='btnSesion' href="{{ route('perfil', Auth::user()) }}">Perfil</a>
                                    @endif
                                    <form method="POST" action="{{ route('logout', Auth::user()) }}">
                                        @csrf
                                        <input type="submit" class='btnSesion' value="Salir">
                                    </form>
                                @endif
                            </div>
                        </div>
                    </div>
                </li>
                <li class="menu-item"><a href="#" class="iconosHeader"><span class="fas fa-heart"></span></a>
                </li>
                <li class="menu-item"><a href="#" class="iconosHeader"><span
                            class="fas fa-shopping-cart"></span></a>
                </li>
            </ul>

            <div class="hamburguer" id="Hamburguer">
                <span class="linea"></span>
                <span class="linea"></span>
                <span class="linea"></span>
            </div>
        </div>

        <div class="menu-mobile" id="Menu">
            <span class="menu-item">Juguetes</span>
            <span class="menu-item">Complementos</span>
            <span class="menu-item">Mi cuenta</span>
            <span class="menu-item">Carrito de la compra</span>
        </div>
    </nav>
</header>
