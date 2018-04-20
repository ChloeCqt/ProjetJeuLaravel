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

Route::get('/', function () {
    return view('homeaffichage');
});

Auth::routes();

Route::get('/homeaffichage', 'ControlleurChagot@homeaffichage');
Route::get('/navigation', 'ControlleurChagot@navigation');

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/event/{id}','ControllerCaquant@event')->where("id",'[0-9]+');