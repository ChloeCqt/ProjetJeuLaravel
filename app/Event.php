<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $table = "event";

    public function BToChapter(){
        return $this->belongsTo("App\Chapter", "idChapter");
    }

    public function Background(){
        return $this->belongsTo("App\Background", "idBackground");
    }

    public function characters(){
        return $this->hasMany("App\Character", "idEvent");
    }

    public function answers(){
        return $this->hasMany("App\Answer", "idEvent");
    }

    public function User(){
        return $this->hasMany("App\User", "idEvent");
    }
}
