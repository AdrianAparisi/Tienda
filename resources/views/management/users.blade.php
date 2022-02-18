@extends('layouts.admin_layout')

@section('title', 'Administrar')

@section('main')

    @php
    $properties = Schema::getColumnListing('users');
    @endphp

    <div class="main-container">
        @include('partials.admin_new_form')

        <div class="table_container">
            <table>
                <thead>
                    <tr>
                        @php
                            $haystack = ['id', 'email_verified_at', 'password', 'direction_id', 'two_factor_secret', 'two_factor_recovery_codes', 'remember_token', 'current_team_id', 'created_at', 'updated_at'];
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
                    @forelse ($users as $u)
                        <tr>
                            <form action="{{ route('user.update', ['user' => $u->id]) }}" id={{ 'users/' . $u->id }}
                                class="form" method="post" enctype="multipart/form-data">
                                @csrf
                                @method('put')
                                <td data-label="NIF">
                                    <input type="text" name="nif" id="nif" value="{{ $u->nif }}">
                                </td>
                                <td data-label="Nombre">
                                    <input type="text" name="name" id="name" value="{{ $u->name }}">
                                </td>
                                <td data-label="Apellidos">
                                    <input type="text" name="surname" id="surname" value="{{ $u->surname }}">
                                </td>
                                <td data-label="EMail">
                                    <input type="email" name="email" id="email" value="{{ $u->email }}">
                                </td>
                                <td data-label="Admin">
                                    <input type="checkbox" name="is_admin" id="is_admin"
                                        {{ $u->is_admin ? 'checked' : '' }}>
                                </td>
                                <td data-label="Cumpleaños">
                                    <input type="date" name="birthday" id="birthday" value="{{ $u->birthday }}">
                                </td>
                                <td data-label="Teléfono">
                                    <input type="number" name="phone" id="phone" value="{{ $u->phone }}">
                                </td>
                                <td data-label="Premium">
                                    <input type="checkbox" name="premium" id="premium"
                                        {{ $u->premium ? 'checked' : '' }}>
                                </td>
                                <td data-label="Foto">
                                    <img src="{{ asset($u->profile_photo_path) }}" alt="{{ $u->name }}">
                                </td>
                                <td data-label="Acciones">
                                    <button onclick="ed(event)" class="fas fa-edit btnEdit"></button>
                                    <button onclick="del(event)" class="fas fa-backspace btnBorrar"></button>
                                </td>
                            </form>
                        </tr>
                    @empty
                    <tr>
                        <td></td>
                        <td>No hay Usuarios</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>

@endsection
