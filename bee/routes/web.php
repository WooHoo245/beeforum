<?php

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
Route::group(['middleware' => 'locale'], function () {
   Route::get('/', function () {
    return view('welcome');
   });
   
   Route::get('change-language/{language}', 'HomeController@changeLanguage')->name('change-language');

   Route::get('profile', 'UserController@profile');

   Route::post('profile', 'UserController@update_avatar');

   Route::post('search', 'HomeController@search');

   Route::get('about', 'HomeController@about');

   Auth::routes();

   Route::get('/beeforum', 'HomeController@index');

   Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');
	
});


