<?php

use App\Http\Controllers\Api\OrderApiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Models\Order;
use App\Models\Product;
use App\Http\Controllers\Api\UserApiController;
use App\Http\Controllers\Api\ProductApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('/orders', OrderApiController::class);
Route::apiResource('/user', UserApiController::class);
Route::apiResource('/products', ProductApiController::class);

Route::get('/stock', function () {
    return response()->json(Product::where('stock', '<', '5')->get(), 200);
});



