<?php

namespace App\Http\Controllers\NGO;

use App\Http\Controllers\Controller;

class NgoController extends Controller
{
    public function Dashboard()
    {
        return view('Ngo.Dashboard.Index');
    }
}
