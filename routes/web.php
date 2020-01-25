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

Route::get('/', 'PagesController@index');
Route::get('/about', 'PagesController@about');

Auth::routes();

Route::get('/dashboard', 'DashboardController@index');
Route::get('/user', 'UserController@index');
Route::get('/user/edit', 'UserController@edit');
Route::match(['put', 'patch'],'/user/edit', 'UserController@update');
Route::delete('/user/deactivate/{id}', 'UserController@destroy')->name('user.deactivate');
//Route::resource ('user', 'UserController');
Route::get('/test', 'test@store');