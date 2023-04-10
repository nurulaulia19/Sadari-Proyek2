<?php

use App\Models\User;
use App\Models\Puskesmas;
use App\Models\Quisioners;
use App\Models\ModelHasRoles;
use App\Models\ResultKeluhan;
use App\Models\Daftar_keluhan;
use App\Models\ResultQuisioner;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\biodataController;
use App\Http\Controllers\keluhanController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\userAdminController;
use App\Http\Controllers\quisionersController;
use App\Http\Controllers\ResultKeluhanController;
use App\Http\Controllers\belumditanganiController;
use App\Http\Controllers\sudahditanganiController;
use App\Http\Controllers\ResultQuisionerController;


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
    return view('welcome');
});




// Route::get('/login', function () {
//     return view('pages.login');
// });


// Route::get('/admin/home', function () {
//     return view('pages.admin/home');
// });





// Route::get('/register', function () {
//     return view('pages.registrasi');
// });



Auth::routes([
    'verify' =>true
]);
Route::middleware('auth')->group(function () {
    Route::get('/admin', [App\Http\Controllers\AdminController::class, 'index']);
    Route::resource('resultquisioner', ResultQuisionerController::class);
    Route::resource('resultkeluhan', ResultKeluhanController::class);
    Route::get('/quisioner', function () {
        $angka = 1;
        $dataPertanyaan = Quisioners::all();
        $dataKeluhan = Daftar_keluhan::all();
        $result_keluhan = ResultKeluhan::orderBy("created_at", "desc")->get();
        $cs = "";
        return view('pages.quisioner', compact('angka', 'dataPertanyaan', 'dataKeluhan','result_keluhan','cs'));
    });
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware('verified');;

// Route::get('/admin/home', function () {
//     return view('pages.admin/home');
// });

Route::get('/admin/biodata', [biodataController::class, 'index']);
Route::get('/admin/sudahditangani', [sudahditanganiController::class, 'index']);
Route::get('/admin/belumditangani', [belumditanganiController::class, 'index']);
Route::get('/admin/laporan', [LaporanController::class, 'index']);
Route::get('/admin/{id}', [AdminController::class, 'update']);

//superadmin
Route::get('/superAdmin', [App\Http\Controllers\AdminController::class, 'index1']);
Route::get('/superAdmin/biodata', [biodataController::class, 'index1']);
Route::get('/superAdmin/sudahditangani', [sudahditanganiController::class, 'index1']);
Route::get('/superAdmin/belumditangani', [belumditanganiController::class, 'index1']);
Route::get('/superAdmin/laporan', [LaporanController::class, 'index1']);
Route::get('/superAdmin/{id}', [AdminController::class, 'update1']);

Route::get('/quisioners', [quisionersController::class, 'index']);
Route::get('/quisioners/create', [quisionersController::class, 'create']);
Route::post('/quisioners/store', [quisionersController::class, 'store']);
Route::get('/quisioners/edit/{id}', [quisionersController::class, 'edit']);
Route::post('/quisioners/update/{id}', [quisionersController::class, 'update']);
Route::get('/quisioners/destroy/{id}', [quisionersController::class, 'destroy']);

Route::get('/keluhan', [keluhanController::class, 'index']);
Route::get('/keluhan/create', [keluhanController::class, 'create']);
Route::post('/keluhan/store', [keluhanController::class, 'store']);
Route::get('/keluhan/edit/{id}', [keluhanController::class, 'edit']);
Route::post('/keluhan/update/{id}', [keluhanController::class, 'update']);
Route::get('/keluhan/destroy/{id}', [keluhanController::class, 'destroy']);

Route::get('/userAdmin', [userAdminController::class, 'index']);
Route::get('/userAdmin/create', [userAdminController::class, 'create']);
Route::post('/userAdmin/store', [userAdminController::class, 'store']);
Route::get('/userAdmin/edit/{id}', [userAdminController::class, 'edit']);
Route::post('/userAdmin/update/{id}', [userAdminController::class, 'update']);
Route::get('/userAdmin/destroy/{id}', [userAdminController::class, 'destroy']);
