<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class S_user_address extends Model
{
	protected $table = 's_user_addresses';
    protected $guarded = ['id'];
    public $timestamps = false;

    public function country(){
    	return $this->hasOne('App\S_core_Country','country_id');
    }
}
