<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class S_user_attribute extends Model
{
	protected $table = 's_user_attributes';
    protected $guarded = ['id'];
    public $timestamps = false;
}
