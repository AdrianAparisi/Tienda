<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ProductApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $product = new Product();
        $this->toReturn($request, $product);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return response()->json($product, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, Product $product)
    {
        $this->toReturn($request, $product);
    }

    private function save(ProductRequest $request, Product $product)
    {
        $directoryImg = '';
        if ($request->hasFile('product_photo_path')) {
            $file = request()->file('product_photo_path');
            $directoryImg = $file->storeAs('/public', Hash::make($product->name) . '.jpg');
            $product->product_photo_path = $directoryImg;
        }

        $product->fill($request->all())->save();

        return 'Ok';
    }

    private function toReturn(ProductRequest $request, Product $product)
    {
        $saved = $this->save($request, $product);
        if (isset($saved))
            return response()->json($saved);
        else
            return response()->json('Fail', 406);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        Product::destroy($product->id);
    }
}
