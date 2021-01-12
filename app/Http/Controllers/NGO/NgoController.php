<?php

namespace App\Http\Controllers\NGO;

use App\Http\Controllers\Controller;
use App\Models\NgoInfo;
use App\Models\User;
use Illuminate\Http\Request;

class NgoController extends Controller
{

    // Check Info
    public function CheckInfo()
    {
        $info = NgoInfo::where('ngo_id', Auth()->user()->id)->first();
        if (!$info) {
            return false;
        }
        return true;
    }

    // Update Info
    public function UpdateInfo(Request $request)
    {
        $request->validate([
            'image' => 'required',
            'description' => 'required',
        ]);

        $file = $request->file('image');
        $extension = $file->getClientOriginalExtension();
        $filename = time() . '.' . $extension;
        $file->move('website/images/ngo', $filename);

        $form_data = array(
            'ngo_id' => Auth()->user()->id,
            'image' => $filename,
            'description' => $request->description,
        );

        NgoInfo::create($form_data);
        return redirect()->back();
    }

    // Dashboard
    public function Dashboard()
    {
        if ($this->CheckInfo()) {
            return view('Ngo.Dashboard.Index');
        }

        return view('Ngo.Info.index');
    }

    // Doners
    public function Doners()
    {
        if ($this->CheckInfo()) {
            return view('Ngo.Doners.index');
        }

        return view('Ngo.Info.index');
    }

    // Profile
    public function Profile()
    {
        if ($this->CheckInfo()) {
            $profile = User::where('users.id', Auth()->user()->id)
                ->join('ngo_infos', 'ngo_infos.ngo_id', '=', 'users.id')
                ->select(
                    'users.name',
                    'users.email',
                    'ngo_infos.image',
                    'ngo_infos.description'
                )
                ->first();
            return view('Ngo.Profile.index', compact('profile'));
        }

        return view('Ngo.Info.index');
    }
}
