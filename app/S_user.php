<?php

namespace App;

use App\S_core_Country;
use App\S_user_address;
use Illuminate\Database\Eloquent\Model;

class S_user extends Model
{
	protected $table = 's_user';
    protected $guarded = ['id'];

    public function coreCountry(){
    	return $this->hasOne('App\S_core_Country');
    }

    public function userAddress(){
    	return $this->hasOne('App\S_user_address','user_id');
    }

    public function document(){
    	return $this->hasOne('App\S_user_attribute','userID');
    }
    public function order(){
    	return $this->hasOne('App\S_user_order','userID');
    }
    public function registrationUpload(){
    	return $this->hasOne('App\Ant_registration_upload','customer_id');
    }
}
