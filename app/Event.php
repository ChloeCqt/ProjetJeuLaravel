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

    public function Character(){
        return $this->hasMany("App\Character", "idEvent");
    }

    public function Question(){
        return $this->hasOne("App\Question", "idEvent");
    }

    public function User(){
        return $this->hasMany("App\User", "idEvent");
    }
}
