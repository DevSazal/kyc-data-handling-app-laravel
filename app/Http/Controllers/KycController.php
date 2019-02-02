<?php

namespace App\Http\Controllers;

use Auth;
use App\User;
use Validator;
use App\S_user;
use App\KYC\Kyc;
use App\S_user_order;
use App\S_core_Country;
use App\S_user_address;
use App\S_user_attribute;
use App\Document\Document;
use Illuminate\Http\Request;
use App\Ant_registration_upload;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;

class KycController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function index()
    {
        if (Session::has('langOne')) {
            App::setlocale("en");
        }elseif(Session::has('langTwo')){
            App::setlocale("de");
        }else{
            $lang="none";
        }

        $data = S_user::all();
        return view ( 'home' )
                        ->with([
                            'data' =>$data
                        ]);
    }
    public function langEnIndex()
    {

        session()->forget('langTwo');
        session()->put('langOne','en');
        App::setlocale("en");

        $data = S_user::all();
        return view ( 'home' )
                        ->with([
                            'data' =>$data
                        ]);
    }

    public function lanDeIndex(){
        session()->forget('langOne');
        session()->put('langTwo','de');
        App::setLocale("de");

        $data = S_user::all();
        return view ( 'home' )
                        ->with([
                            'data' =>$data
                        ]);
    }


    public function editItem(Request $request){
        $rules = array (
            'first_name' => 'required',
            'last_name' => 'required',
            'city' => 'required',
            'country' => 'required',
            'city_of_birth' => 'required',
            'country_of_birth' => 'required',
            'nationality' => 'required',
            'document_type' => 'required',
            'document_number' => 'required',
            'issuing_authority' => 'required',
            'issue_on' => 'required',
            'valid_until' => 'required',
            'follow_up' => 'required',
    );
    $validator = Validator::make ( Input::all (), $rules );
    if ($validator->fails ())
        return response()->json ( array (
                'errors' => $validator->getMessageBag ()->toArray ()
        ) );
    else {
        $userAddr = S_user_address::where('user_id', $request->id)->first();
        $userAttr = S_user_attribute::where('userID', $request->id)->first();
        $userOrder = S_user_order::where('userID', $request->id)->first();
        $data = Kyc::find ( $request->id );
        $userAddr->firstname = ($request->first_name);
        $userAddr->lastname = ($request->last_name);
        $userAddr->city = ($request->city);
        // $data->country = ($request->country);
        $userAttr->weecityofbirth = ($request->city_of_birth);
        $userAttr->weecountryofbirth = ($request->country_of_birth);
        $userAttr->weenationality = ($request->nationality);
        $userAttr->weeidentificationtype = ($request->document_type);
        $userAttr->weeidnumber = ($request->document_number);
        $userAttr->weeissuingauthority = ($request->issuing_authority);
        $userAttr->weeissuedon   = ($request->issue_on);
        $userAttr->weevaliduntil = ($request->valid_until);
        $userOrder->comment = ($request->comment);
        $userAttr->kycfollowup = ($request->follow_up);
        $userAddr->save();
        $userAttr->save();
        $userOrder->save();

        return response ()->json ( $userAttr );
    }
    }

    public function customSearch(Request $request)
    {
        if ($request->amount == 1) {
            //$data = Kyc::all();
            //return view ( 'home' )->withData ( $data );
            return redirect()->route('homeIndex');
        }
          if($request->amount == 2000) {
            $userID = S_user_order::where('invoice_amount_net','<',$request->amount)->pluck('userID')->toArray();
            $data = S_user::whereIn('id',$userID)->get();

            return view ( 'home' )->withData ( $data );
          }
          elseif($request->amount == 10000 ){
            $userID = S_user_order::where('invoice_amount_net','>',2000)
                        ->where('invoice_amount_net', '<', $request->amount)
                        ->pluck('userID')->toArray();
            $data = S_user::whereIn('id',$userID)->get();
            return view ( 'home' )->withData ( $data );
          }
          elseif($request->amount == 100000 ){
            $userID = S_user_order::where('invoice_amount_net','>',10000)
                        ->where('invoice_amount_net', '<', $request->amount)
                        ->pluck('userID')->toArray();
            $data = S_user::whereIn('id',$userID)->get();
            return view ( 'home' )->withData ( $data );
          }
          elseif($request->amount > 100000 ){
            $userID = S_user_order::where('invoice_amount_net','>',$request->amount)->pluck('userID')->toArray();
            $data = S_user::whereIn('id',$userID)->get();
            return view ( 'home' )->withData ( $data );
          }

           else {
            $data = S_user_order::all();
            return view ( 'home' )->withData ( $data );
          }
    }


    public function customSearchDocument(Request $request)
    {
        if ($request->check) {

            $id = Ant_registration_upload::pluck('customer_id');
            $data = S_user::whereNotIn('id',$id)->get();

            return view ( 'home' )->withData ( $data );
        }

    }

    public function customSearchFollowUp(Request $request)
    {
        if ($request->check) {

            $userID = S_user_attribute::where('kycfollowup',1)->pluck('userID')->toArray();
            $data = S_user::whereIn('id',$userID)->get();
            return view ( 'home' )->withData ( $data );
        }

    }

    public function customSearchInternalOk(Request $request)
    {
        if ($request->check) {

            $userID = S_user_attribute::where('kycinternalok',11)->pluck('userID')->toArray();
            $data = S_user::whereIn('id',$userID)->get();
            return view ( 'home' )->withData ( $data );
        }

    }
    public function internalUpdate(Request $request)
    {
            //die($request->internal);
        try{
            $update= S_user_attribute::where('userID',$request->id)->first();
            $update->kycinternalok = $request->internal;
            $update->save();
             return response ()->json ( $update );

        }catch(\Exception $e){
            echo $e->getMessage();
        }

        // ->update(['internal'=>request()->has('internal')]);

    }
    public function externalUpdate(Request $request)
        {
            try{
                $update= S_user_attribute::where('userID',$request->id)->first();
                $update->kycexternalok = $request->external;
                $update->save();
                return response ()->json ( $update );

            }catch(\Exception $e){
                echo $e->getMessage();
            }

            // ->update(['internal'=>request()->has('internal')]);

        }


    //for external users

    public function external(){
        $userID = S_user_attribute::where('kycinternalok','=',11)->pluck('userID')->toArray();
        $data = S_user::whereIn('id',$userID)->get();
        return view ( 'home' )->withData ( $data );
    }


    public function umIndex(){

        if (Session::has('langOne')) {
            App::setlocale("en");
        }elseif(Session::has('langTwo')){
            App::setlocale("de");
        }else{
            $lang="none";
        }
        $data=User::all();
        //die($data);die;
        return view('userManagement')->with('data',$data);
    }

    public function umEdit(Request $request){
        $id=request('id');
        $rules = array (
            'firstName' => 'required',
            'lastName' => 'required',
            'email'=>'required',
            'userName'=>'required',
            'roleName'=>'required',
            'active'=>'required',
        );
        $validator = Validator::make ( Input::all (), $rules );
        if ($validator->fails ())
            return response()->json ( array (
                    'errors' => $validator->getMessageBag ()->toArray ()
            ) );
        else {
            $data = User::find($id);
            $data->first_name= request('firstName');
            $data->last_name= request('lastName');
            $data->username= request('userName');
            $data->email=request('email');
            if (request('roleName')==1) {
                $data->role_id=request('roleName');
                $data->role_name='admin';
            }elseif (request('roleName')==2) {
                $data->role_id=request('roleName');
                $data->role_name='internal';
            }else{
                $data->role_id=request('roleName');
                $data->role_name='external';
            }
            $data->active=request('active');
            $data->save();
            return response()->json($data);
        }
    }


    public function userDelete($id){
        $delete=User::destroy($id);

        $data=User::all();
        //die($data);die;
        return view('userManagement')->with('data',$data);
    }



    public function userAdd(Request $request){
         $rules = array (
            'firstName' => 'required',
            'lastName' => 'required',
            'email'=>'required',
            'userName'=>'required',
            'roleName'=>'required',
        );
        $validator = Validator::make ( Input::all (), $rules );
        if ($validator->fails ()){
            Session::flash('message', 'Some Field Missing!!');
            Session::flash('alert-class', 'alert-danger');
            $data=User::all();
            return redirect()->back()->with('data',$data);
        }

        else {
            if (request('roleName')==1) {
                $rolename='admin';
            }elseif (request('roleName')==2) {
                $rolename='internal';
            }else{
                $rolename='external';
            }
            if ($request->has('active')) {
                $active = 'Active';
            }else{
                $active = 'NED';
            }
            $user= User::create([

                'first_name' => $request->firstName,
                'last_name' => $request->lastName,
                'username' => $request->userName,
                'email' => $request->email,
                'password' => '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', //secret
                'active' => $active,
                'role_id' =>$request->roleName,
                'role_name'=>$rolename,
            ]);

            return redirect()->route('umIndex');
        }
    }


    /////////////////////////////////////////////////////////////////////////////////
    public function getentries(Request $request)
    {
        $enteries = S_user::all();

        $data =array();
        if(isset($enteries) && !empty($enteries)) {
            $x=0;

            foreach($enteries as $entery) {
                $kycinternalok = '';
                if($entery->document->kycinternalok==11){
                    $kycinternalok = 'checked';
                }

                $kycexternalok = '';
                if($entery->document->kycexternalok==11){
                    $kycexternalok = 'checked';
                }

                
                $custom_column = '<div class="display: table-cell">';
                if(Auth::user()->role_id !== 3){
                    $custom_column .= '<div class="checkInfo green">
                                           <label class="chkcontainer">
                                               <input id="internalCheck'. $entery->id . '" onchange="internalOkFunction(this,' . $entery->id . ');return false;" type="checkbox" ' . $kycinternalok . ' >
                                               <input id="hiddenId" type="hidden" value="'.$entery->id.'">
                                               <span class="checkmark"></span>
                                           </label>
                                       </div>';
                }
                   if(Auth::user()->role_id !==2) {
                       $custom_column .= '<div class="checkInfo">
                            <label class="chkcontainer">
                                <input id="externalCheck'.$entery->id.'" type="checkbox" '.$kycexternalok.' onchange="externalOkFunction(this,'.$entery->id.');return false;">
                                <span class="checkmark"></span>
                            </label>
                        </div>';
                   }
                    $custom_column .= '
                        <div class="checkInfolink">
                            <a class="edit" id="editMainDatalist" href="#" data-info="'.$entery->userAddress->firstname.','.$entery->userAddress->lastname.','.$entery->userAddress->city.','.S_core_Country::find($entery->userAddress->country_id)->value('countryname').','.$entery->document->weecityofbirth.','.$entery->document->weecountryofbirth.','.$entery->document->weenationality.','.$entery->document->weeidentificationtype.','.$entery->document->weeidnumber.','.$entery->document->weeissuingauthority.','.$entery->document->weeissuedon.','.$entery->document->weevaliduntil.','.$entery->order->invoice_amount_net.','.Ant_registration_upload::where('customer_id','=',$entery->id)->count().','.$entery->id.','.$entery->document->kycfollowup.','.$entery->order->comment.'">
                                <i class="fa fa-pencil-square-o"></i>
                            </a>
                        </div></div>
                        ';

                $data[$x] =   array(
                    'sr_no'=> ($x+1),
                    'firstname'=> $entery->firstname,
                    'lastname'=> $entery->lastname,
                    'city'=> $entery->userAddress->city,
                    'countryname'=> S_core_Country::find($entery->userAddress->country_id)->value('countryname'),
                    'weecityofbirth'=> $entery->document->weecityofbirth,
                    'weecountryofbirth'=> $entery->document->weecountryofbirth,
                    'weenationality'=> $entery->document->weenationality,
                    'weeidentificationtype'=> $entery->document->weeidentificationtype,
                    'weeidnumber'=> $entery->document->weeidnumber,
                    'weeissuingauthority'=> $entery->document->weeissuingauthority,
                    'weeissuedon'=> $entery->document->weeissuedon,
                    'weevaliduntil'=> $entery->document->weevaliduntil,
                    'invoice_amount_net'=> $entery->order->invoice_amount_net,
                    'doc_count'=> Ant_registration_upload::where('customer_id','=',$entery->id)->count(),
                    'kycfollowup'=> $entery->document->kycfollowup,
                    'kycinternalok'=> $entery->document->kycinternalok,
                    'kycexternalok'=> $entery->document->kycexternalok,
                    'custom_column'=> $custom_column,
                );

                $x ++;
            }

            $results =  array(
                "sEcho" => 0,
                "iTotalRecords" => count($data),
                "iTotalDisplayRecords" => count($data),
                "aaData"=>$data
            );

        }

        else
        {
            $results =  array(
                "sEcho" => 1,
                "iTotalRecords" => 0,
                "iTotalDisplayRecords" => 0,
                "aaData"=>$data
            );

        }

        return response()->json ( $results);

    }
}


