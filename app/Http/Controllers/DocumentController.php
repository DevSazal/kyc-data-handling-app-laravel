<?php

namespace App\Http\Controllers;

use App\Document\Document;
use Illuminate\Http\Request;
use App\Ant_registration_upload;

class DocumentController extends Controller
{
    public function findDocument(Request $request){
        $request_data = $request->all();
        $user_id = $request_data['id'];
        $user_data = Ant_registration_upload::where('customer_id', $user_id)->get();
        return response()->json($user_data);
    }
}
