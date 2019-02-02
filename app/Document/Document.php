<?php

namespace App\Document;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $fillable=['kyc_id','file_name','url'];
}
