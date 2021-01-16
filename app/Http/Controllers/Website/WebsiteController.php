<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Blog;
use App\Models\NgoInfo;
use App\Models\Team;
use App\Models\Donate;
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
        return view('Website.ngo.index', compact('profile', 'id'));
    }

    public function donate(Request $request)
    {
        $request->validate([
            'ngo_id' => 'required',
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'method' => 'required',
            'transaction_number' => 'required',
            'amount' => 'required',
        ]);

        $form_data = array(
            'ngo_id'=> $request->ngo_id,
            'name'=> $request->name,
            'email'=> $request->email,
            'phone'=> $request->phone,
            'method'=> $request->method,
            'transaction_number'=> $request->transaction_number,
            'amount'=> $request->amount,
        );

        Donate::create($form_data);
        return redirect()->back()->with('success', 'Successfully donate send .');
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
