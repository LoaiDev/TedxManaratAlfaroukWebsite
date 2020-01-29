<?php

namespace App;
use Illuminate\Database\Eloquent\SoftDeletes;

use Illuminate\Database\Eloquent\Model;

class FormType extends Model
{
    use SoftDeletes;

    public function forms()
    {
        return $this->hasMany('App\User');
    }
    public function parent()
    {
        return $this->belongsTo('App\FormType');
    }
    public function childs()
    {
        return $this->hasMany('App\FormType', 'parent_id');
    }
}
