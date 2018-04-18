<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    protected $table = "answer";

    public function Event(){
        return $this->belongsTo("App\Event", "idEvent");

    }
}
