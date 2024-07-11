<?php

use App\Http\Controllers\ApiAuthentification;
use App\Http\Controllers\InstitutController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
    
});


Route::post('login', [ApiAuthentification::class, 'loginAdmin']);
Route::post('createUser', [ApiAuthentification::class, 'createCAD']);


// Route::middleware(['auth'])->group(function(){
    Route::get('instituts', [InstitutController::class, 'index']);
// });




/*
users : 
institutes : nombreStagiaires subTitle : CSM Tiflet  phone adress image location nbrStagiaire
evenements : title date desc img
filieres : type 
secteur : 
options : type


*/
