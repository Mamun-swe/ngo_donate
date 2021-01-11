<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NgoInfo extends Model
{
    use HasFactory;
    protected $fillable = ['ngo_id', 'image', 'description'];
}
