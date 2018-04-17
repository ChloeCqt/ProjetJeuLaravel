<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Background extends Model
{
    protected $table = "background";

    public function BToEvent(){
        return $this->belongsToMany("App\EventBackground", "idEvent");

    }
}
