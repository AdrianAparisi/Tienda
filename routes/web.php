<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Models\Category;
use App\Models\Product;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    $productList = Product::orderBy('sold', 'desc')->skip(0)->take(9)->get();
    return view('index', compact('productList'));
})->name('index');

Route::get('/', function () {
    $products = Product::orderBy('sold', 'desc')->skip(0)->take(6)->get();
    $categories = Category::all();
    return view('index', compact('products', 'categories'));
})->name('index');


Route::resource('/productos', ProductController::class)
    ->except(['index', 'show'])
    ->parameters(['productos' => 'product'])
    ->middleware('auth');

Route::resource('/productos', ProductController::class)
    ->parameters(['productos' => 'product'])
    ->only(['index', 'show']);


Route::get('/faq', function () {
    return view('faq');
})->name('faq.show');



Route::get('/user/admin/stock', [AdminController::class, 'stock'])->name('admin.stock')->middleware('auth');
Route::get('/user/admin/products', [AdminController::class, 'products'])->name('admin.products')->middleware('auth');
Route::get('/user/admin/orders', [AdminController::class, 'orders'])->name('admin.orders')->middleware('auth');
Route::get('/user/admin/users', [AdminController::class, 'users'])->name('admin.users')->middleware('auth');


Route::resource('/usuario', UserController::class)
    ->parameters(['usuario' => 'user'])
    ->except(['index', 'update'])
    ->names([
        'show' => 'perfil',
        'create' => 'registro',
        'destroy' => 'salir',
    ])
    ->middleware('auth');
