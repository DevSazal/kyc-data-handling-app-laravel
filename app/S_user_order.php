<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class S_user_order extends Model
{
	protected $table = 's_order';
    protected $guarded = ['id'];
    public $timestamps = false;
}
