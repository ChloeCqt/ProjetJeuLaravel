<?php

namespace App\Http\Controllers;

use App\Event;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ControllerCaquant extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function event($e){
    // Condition pour eviter de retourner en arrrière : Auth::user()->event_id

        $e = Event::find($e);
        if($e == false)
            return redirect('404');

        if(Auth::user()->idEvent < $e)
            return view ('event', ['event' => $e]);
        Auth::user()->idEvent = $e;
        Auth::user()->save();
        return view ('event', ['event' => $e]);

    }

    public function background($idbackground){
        $idbackground = Background::find($idbackground);
        return view("background", ["id"=>$idbackground]);
    }


}
