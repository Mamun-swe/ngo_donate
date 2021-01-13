<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Blog;
use App\Models\NgoInfo;
use App\Models\Team;
use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    public function index()
    {
        $banners = Banner::orderBy('id', 'DESC')->get();
        $ngos = NgoInfo::all();
        $blogs = Blog::orderBy('id', 'DESC')->take(3)->get();
        return view('welcome', compact('banners', 'ngos', 'blogs'));
    }

    public function about()
    {
        $members = Team::all();
        return view('Website.about', compact('members'));
    }

    public function blog()
    {
        $blogs = Blog::orderBy('id', 'DESC')->get();
        return view('Website.blog.index', compact('blogs'));
    }

    public function blogRead($id)
    {
        $blog = Blog::find($id);
        return view('Website.blog.read', compact('blog'));
    }

    public function contact()
    {
        return view('Website.contact');
    }

    public function ngo($id)
    {
        $profile = NgoInfo::where('id', $id)->first();
        return view('Website.ngo.index', compact('profile'));
    }

    public function message(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => ['required', 'string', 'email', 'max:255'],
            'message' => 'required',
        ]);

        var_dump($request->all());
    }

    public function login()
    {
        return view('Auth.login');
    }

    public function register()
    {
        return view('Auth.register');
    }

    public function reset()
    {
        return view('Auth.reset');
    }

    public function denied()
    {
        return view('denied');
    }
}
