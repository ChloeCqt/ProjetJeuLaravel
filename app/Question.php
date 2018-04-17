<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $table = "question";

    public function BToEvent(){
        return $this->belongsTo("App\Event", "idEvent");

    }

    public function answers(){
        return $this->hasMany("App\Answer", "idQuestion");
    }
}
