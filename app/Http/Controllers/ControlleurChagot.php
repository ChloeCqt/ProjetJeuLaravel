<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ControlleurChagot extends Controller
{
    public function homeaffichage(){
        return view('homeaffichage');
    }

    public function background($idbackground){
        $idbackground = Background::find($idbackground);
        return view("background", ["id"=>$idbackground]);
    }
}
