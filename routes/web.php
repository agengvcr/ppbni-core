<?php

use Illuminate\Support\Facades\Route;

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
    return view('index');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index']);

Route::get('/admin/anggota', 'AnggotaController@index');

Route::get('/wilayah/desa', 'AnggotaController@getDesa');

Route::post('/admin/anggota-post', 'AnggotaController@postData');

Route::get('/admin/anggota/detail/{id?}', 'AnggotaController@get');

Route::post('/admin/anggota-post-delete', 'AnggotaController@postDelete');

