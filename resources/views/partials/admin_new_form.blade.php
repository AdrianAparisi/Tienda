<div class="barra-buscador">
    <div class="box-buscador">
        <div class="container-buscador">
            <span class="fa fa-search icon"></span>
            <input type="search" id="search" placeholder="Buscar..." onkeyup="filterSearch(event)" />
        </div>
    </div>
    <div class="filtro">
        <select name="category" id="category" onchange="filterCategory(event)">
            @forelse ($categories as $cs)
                <option value="{{ $cs }}"></option>
            @empty
            @endforelse
        </select>
    </div>
    <div>
        <div id="openAdd">
            <span class="fas fa-circle-plus button-add">+</span>
        </div>

        <div id="addContainer" class="addContainer">
            <div class="modal">
                <div id="btnClose">
                    <span class="fas fa-times-circle"></span>
                </div>
                <h1>Añadir Producto</h1>
                <div class="formulario">
                    <form action="#" method="post">

                        <label for="name">Nombre del producto</label>
                        <input type="text" name="name" id="name" required placeholder="Nombre del articulo">

                        <label for="technical_name">Nombre tecnico del producto</label>
                        <input type="text" name="technical_name" id="technical_name" required
                            placeholder="Nombre tecnico del articulo">

                        <label for="description">Descripcion del producto</label>
                        <textarea name="description" id="description" required
                            placeholder="Descripción del producto..."></textarea>

                        <label for="technical_description">Descripcion tecnica del producto</label>
                        <textarea name="technical_description" id="technical_description" required
                            placeholder="Descripción tecnica del producto..."></textarea>

                        <label for="price">Precio del producto</label>
                        <input type="number" name="price" id="price" required placeholder="Precio del producto">

                        <label for="tax">Iva</label>
                        <input type="number" name="tax" id="price" required placeholder="Iva">

                        <label for="discount">Descuento</label>
                        <input type="number" name="discount" id="discount" required placeholder="Descuento">

                        <label for="discount_end">Fecha Descuento</label>
                        <input type="date" name="discount_end" id="discount_end" required
                            placeholder="Fecha final del descuento del producto...">

                        <label for="product_photo_path">Fotos del producto</label>
                        <input type="file" name="product_photo_path" id="product_photo_path" required multiple>

                        <label for="visible2">Visible</label>
                        <input type="checkbox" name="visible2" id="visible2">

                        <label for="sold">Sold</label>
                        <input type="checkbox" name="sold" id="sold">

                        <label for="stock">Stock</label>
                        <input type="number" name="stock" id="stock" required>

                        <label for="categories">Categorias</label>
                        <textarea name="categories" id="categories" required
                            placeholder="Categorias del producto..."></textarea>

                        <button type="submit " name="enviar_formulario " id="enviar ">
                            <p>Añadir</p>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
