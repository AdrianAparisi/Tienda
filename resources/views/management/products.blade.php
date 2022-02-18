@extends('layouts.admin_layout')

@section('title', 'Administrar')

@section('main')

    @php
    $properties = Schema::getColumnListing('products');

    @endphp

    <div class="main-container">
        <div class="table_container">
            <table>
                <thead>
                    <tr>
                        @php
                            $haystack = ['id', 'created_at', 'updated_at'];
                        @endphp
                        @forelse ($properties as $p)
                            @if (!in_array($p, $haystack))
                                <th>
                                    {{ $p }}
                                </th>
                            @endif
                        @empty
                            No hay propiedades
                        @endforelse
                        <th>category</th>
                        <th>Acciones</th>
                    </tr>
                </thead>

                <tbody>
                    @forelse ($products as $p)
                        <tr>
                            <form action="{{ route('products.update', ['product' => $p->id]) }}"
                                id={{ 'products/' . $p->id }} class="form" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                @method('put')
                                <td data-label="Nombre">
                                    <input type="text" class="name" name="name" id={{ 'name' . $p->id }}
                                        value="{{ $p->name }}">
                                </td>
                                <td data-label="Nombre Técnico">
                                    <input type="text" name="technical_name" id={{ 'technical_name' . $p->id }}
                                        value="{{ $p->technical_name }}">
                                </td>
                                <td data-label="Descripción">
                                    <textarea name="description" id="{{ 'description' . $p->id }}" cols="30" rows="10">
                                        {{ $p->description }}
                                    </textarea>
                                </td>
                                <td data-label="Descripción Técnica">
                                    <input type="text" name={{ 'technical_description' . $p->id }}
                                        id="{{'technical_description' . $p->id}}" value="{{ $p->technical_description }}">
                                </td>
                                <td data-label="Precio">
                                    <input type="number" name="price" id="{{ 'price' . $p->id }}"
                                        value="{{ $p->price }}">
                                </td>
                                <td data-label="IVA">
                                    <input type="number" name="tax" id={{ 'tax' . $p->id }} value="{{ $p->tax }}">
                                </td>
                                <td data-label="Descuento">
                                    <input type="number" name="discount" id={{ 'discount' . $p->id }}
                                        value="{{ $p->discount }}">
                                </td>
                                <td data-label="Stock">
                                    <input type="number" name="stock" id="{{ 'stock' . $p->id }}"
                                        value="{{ $p->stock }}">
                                </td>
                                <td data-label="Ventas">
                                    <input type="number" name="sold" id="{{ 'sold' . $p->id }}"
                                        value="{{ $p->sold }}">
                                </td>
                                <td data-label="Fecha Descuento">
                                    <input type="datetime" name="end_discount" id="{{ 'end_discount' . $p->id }}"
                                        value="{{ $p->end_discount }}">
                                </td>
                                <td data-label="Imágenes">
                                    <input type="file" id="{{ 'product_photo_path' . $p->id }}" name="product_photo_path">
                                </td>
                                <td data-label="Alta">
                                    <input type="checkbox" name="visible" id="{{ 'visible' . $p->id }}"
                                        {{ $p->visible ? 'checked' : '' }}>
                                </td>
                                <td data-label="Categoría">
                                    <select name="category">
                                        @foreach ($p->categories as $cs)
                                            <option>{{ $cs->name }}</option>
                                        @endforeach
                                    </select>
                                </td>
                                <td data-label="Acciones">
                                    <button onclick="save(event)" class="fas fa-edit btnEdit"></button>
                                    <button onclick="del(event)" class="fas fa-backspace btnBorrar"></button>
                                </td>
                            </form>
                        </tr>
                    @empty
                        <tr>
                            <td></td>
                            <td>No hay Productos</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>

@endsection
