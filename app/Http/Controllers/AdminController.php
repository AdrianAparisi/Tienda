<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function stock()
    {
        if (Auth::user()->is_admin) {
            $products = Product::where('stock', '<', '5')->get();
            $categories = Category::all();
            return view('management.products', compact('products', 'categories'));
        } else
            abort(401);
    }

    public function products()
    {
        if (Auth::user()->is_admin) {
            $products = Product::all();
            $categories = Category::all();
            return view('management.products', compact('products', 'categories'));
        } else
            abort(401);
    }

    public function orders()
    {
        if (Auth::user()->is_admin) {
            $orders = Order::all();
            $categories = Category::all();
            return view('management.orders', compact('orders', 'categories'));
        } else
            abort(401);
    }

    public function users()
    {
        if (Auth::user()->is_admin) {
            $users = User::all();
            $categories = Category::all();
            return view('management.users', compact('users', 'categories'));
        } else
            abort(401);
    }
}
