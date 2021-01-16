<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Donate extends Model
{
    use HasFactory;
    protected $fillable = ['ngo_id', 'name', 'email', 'phone', 'method', 'transaction_number', 'amount'];
}
