<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EventBackground extends Model
{
    protected $table = "eventbackground";

    public function Background(){
        return $this->belongsTo("App\Event", "idEvent");
    }

    public function Event(){
        return $this->belongsToMany("App\Background", "idBackground");
    }
}
