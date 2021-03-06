<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model {
    use HasFactory;

    public function categories() {
        return $this->belongsToMany(Category::class);
    }

    public function userproductlist() {
        return $this->belongsTo(UserProductList::class);
    }
}
