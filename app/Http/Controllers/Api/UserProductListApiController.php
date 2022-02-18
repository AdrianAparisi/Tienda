<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\UserProductList;
use Illuminate\Http\Request;

class UserProductListApiController extends Controller
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
        $list = new UserProductList();
        $this->save($request, $list);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UserProductList  $userProductList
     * @return \Illuminate\Http\Response
     */
    public function show(UserProductList $userProductList)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UserProductList  $userProductList
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, UserProductList $userProductList)
    {
        $this->save($request, $userProductList);
    }

    private function save(Request $request, UserProductList $list) {
        $list->name = $request['name'];
        $list->user_id = $request['user'];
        $list->product_id = $request['product'];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserProductList  $userProductList
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserProductList $userProductList)
    {
        //
    }
}
