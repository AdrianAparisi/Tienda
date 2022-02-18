<header>
    <div class="containerReecock">
        <a href="index.html"><img src={{ asset('images/logoReecock.png') }} alt="logo de reecock"
                class="logo"></a>
        <div class="reecock">Reecock Admin</div>
    </div>

    <nav>
        <div class="navMovil">
            <ul>
                <li><a class="menu-item" href="{{ route('admin.stock') }}">Gestión Stock</a></li>
                <li><a class="menu-item" href="{{ route('admin.orders') }}">Gestión Ventas</a></li>
                <li><a class="menu-item" href="{{ route('admin.users') }}">Gestión Usuarios</a></li>
                <li><a class="menu-item" href="{{ route('admin.products') }}">Gestión Productos</a></li>
                <div id="openUser">
                    <span class="fas fa-user"></span>
                </div>
                </li>
            </ul>

            <div class="hamburguer" id="Hamburguer">
                <span class="linea"></span>
                <span class="linea"></span>
                <span class="linea"></span>
            </div>
        </div>
        <div class="menu-mobile" id="Menu">
            <span class="menu-item">Gestión de Stock</span>
            <span class="menu-item">Gestión de Ventas</span>
            <span class="menu-item">Gestión de Usuarios</span>
            <span class="menu-item">Gestión de Productos</span>
        </div>
    </nav>
</header>
