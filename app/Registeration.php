<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Registeration extends Model
{
    use SoftDeletes;
    public function details ()
    {
        return $this->hasMany('App\RegisterationDetail');
    }
    public function user()
    {
        return $this->belongsto('App\user');
    }
}
