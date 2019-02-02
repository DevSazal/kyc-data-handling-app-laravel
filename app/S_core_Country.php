<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class S_core_Country extends Model
{
	protected $table = 's_core_countries';
    protected $guarded = ['id'];
    public $timestamps = false;

    public function address(){
    	return $this->belongsTo('App\S_user_address','id');
    }
}
