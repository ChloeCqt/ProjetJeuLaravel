<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Background extends Model
{
    protected $table = "background";

    public function events(){
        return $this->hasMany("App\Event", "idBackground");

    }
}
