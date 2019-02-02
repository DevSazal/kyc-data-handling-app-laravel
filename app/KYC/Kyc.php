<?php

namespace App\KYC;

use Illuminate\Database\Eloquent\Model;

class Kyc extends Model
{
    protected $fillable =[
		'first_name',
		'last_name',
		'city',
		'country',
		'city_of_birth',
		'country_of_birth',
		'nationality',
		'document_type',
		'document_number',
		'issuing_authority',
		'issue_on',
		'valid_until',
		'order_amount',
		'internal',
		'external',
		'follow_up',
		'comment',
	];
}
