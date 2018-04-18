<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Character extends Model
{
    protected $table = "character";

    public function events(){
        return $this->hasMany("App\Event", "idCharacter");

    }
}
