@extends('layouts.admin_layout')

@section('title', 'Administrar')

@section('main')

    @php
    $properties = Schema::getColumnListing('orders');

    @endphp

    <div class="main-container">
        @include('partials.admin_new_form')

        <div class="table_container">
            <table>
                <thead>
                    <tr>
                        @php
                            $haystack = ['id'];
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
                        <th>Acciones</th>
                    </tr>
                </thead>

                <tbody>
                    @forelse ($orders as $o)
                        <tr>
                            <form action="{{ route('order', ['order' => $o->id]) }}" id={{ 'orders/' . $o->id }}
                                class="form" method="post">
                                @csrf
                                @method('put')
                                <td data-label="Petición">
                                    <input type="text" name="id" id={{ 'id' . $o->id }} value="{{ $o->id }}"
                                        disabled>
                                </td>
                                <td data-label="Usuario">
                                    <input type="text" name="id" id="id" value="{{ $o->pivot->name }}" disabled>
                                </td>
                                <td data-label="Fecha">
                                    <input type="text" name="id" id="created_at" value="{{ $o->created_at }}" disabled>
                                </td>
                                <td data-label="Acciones">
                                    <button onclick="save(event)" class="fas fa-edit btnEdit"></button>
                                </td>
                            </form>
                        </tr>
                    @empty
                        <tr>
                            <td></td>
                            <td>No hay Órdenes</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>

@endsection
