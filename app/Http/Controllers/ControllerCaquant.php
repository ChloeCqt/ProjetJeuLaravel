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
        Auth::user()->idEvent = $e->id;
        Auth::user()->save();
        if($e == false)
            return redirect('404');


        return view ('event', ['event' => $e]);

    }

}
