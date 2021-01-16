<?php

namespace App\Http\Controllers\User;

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function index(){
        $donates = User::join('donates', 'donates.ngo_id', '=', 'users.id')
            ->where('donates.email', Auth()->User()->email)
            ->select(
                'users.name as name',
                'donates.amount as amount',
                'donates.created_at as date'
                )
            ->get();
        return view('User.Profile.index', compact('donates'));
    }
}
