<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RegisterationDetail extends Model
{
    use SoftDeletes;
    
    public function form()
    {
        return $this->belongsTo('App\Form');
    }

    public function registeration()
    {
        return $this->belongsTo('App\Registeration');
    }
}
