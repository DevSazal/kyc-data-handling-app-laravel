<?php

use App\KYC\Kyc;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	if (Auth::check()) {
		return redirect()->route('homeIndex');
	}else{
    return view('auth.login');

	}
});

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
Route::get('/logout', 'Auth\LoginController@logout')->name('logout');

Route::get ('/application/kyc', 'KycController@index')->name('homeIndex')->middleware('auth');
Route::get ('/app/kyc/external', 'KycController@external')->name('external')->middleware('auth');



Route::get('/app/kyc/get-details','DocumentController@findDocument')->middleware('auth');

Route::post('/editItem','KycController@editItem')->name('editItem')->middleware('auth');


//internal and external ok check

Route::post ('/app/kyc/internal/update', 'KycController@internalUpdate')->name('internalUpdate')->middleware('auth');
Route::post ('/app/kyc/external/update', 'KycController@externalUpdate')->name('externalUpdate')->middleware('auth');



//search Route

Route::get('/customSearch/{amount}','KycController@customSearch')->name('customSearch')->middleware('auth');

Route::get('/customSearch/document/{check}','KycController@customSearchDocument')
		->name('customSearchDocument')->middleware('auth');

Route::get('/customSearch/follow-up/{check}','KycController@customSearchFollowUp')
		->name('customSearchFollowUp')->middleware('auth');

Route::get('/customSearch/internal-ok/{check}','KycController@customSearchInternalOk')
		->name('customSearchInternalOk')->middleware('auth');



//Route::get('/userManagement','KycController@umIndex')->name('umIndex')->middleware('auth')->middleware('AdminMiddleware');

Route::group(['middleware' => 'App\Http\Middleware\AdminMiddleware'], function()
{
    Route::get('/userManagement','KycController@umIndex' )->name('umIndex')->middleware('auth');
    Route::post('/user/edit','KycController@umEdit')->name('umEdit')->middleware('auth');
Route::post('/user/add','KycController@userAdd')->name('user.add')->middleware('auth');
Route::delete('/user/delete/{id}','KycController@userDelete')->name('user.delete')->middleware('auth');


});


Route::post('/user/edit','KycController@umEdit')->name('umEdit')->middleware('auth');
Route::post('/user/add','KycController@userAdd')->name('user.add')->middleware('auth');
Route::delete('/user/delete/{id}','KycController@userDelete')->name('user.delete')->middleware('auth');


Route::get('/en','KycController@langEnIndex')->name('lang.en')->middleware('auth');
Route::get('/de','KycController@lanDeIndex')->name('lang.de')->middleware('auth');

///////////////////////////////////////////////////////////
Route::get ('/application/getentries', 'KycController@getentries')->name('getEntries')->middleware('auth');
