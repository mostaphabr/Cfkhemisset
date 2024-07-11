<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OptionController;
use App\Http\Controllers\FiliereController;
use App\Http\Controllers\SecteurController;
use App\Http\Controllers\InstitutController;
use App\Http\Controllers\EvenementController;

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


Route::resource('evenements', EvenementController::class);

Route::resource('instituts', InstitutController::class);

Route::resource('filieres', FiliereController::class);

Route::resource('secteurs', SecteurController::class);

Route::resource('options', OptionController::class);
