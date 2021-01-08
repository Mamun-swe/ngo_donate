<?php

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\NGO\NgoController;
use App\Http\Controllers\User\ProfileController;
use App\Http\Controllers\Website\WebsiteController;
use Illuminate\Support\Facades\Route;

// Website Routes
Route::get('/', [WebsiteController::class, 'index'])->name('home');
Route::get('/login', [WebsiteController::class, 'login'])->name('login');
Route::get('/register', [WebsiteController::class, 'register'])->name('register');
Route::get('/reset', [WebsiteController::class, 'reset'])->name('reset');

Route::get('/denied', [WebsiteController::class, 'denied'])->name('denied');

// Auth Routes
Route::group(['prefix' => 'auth', 'as' => 'auth.'], function () {
    Route::post('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/register', [AuthController::class, 'register'])->name('register');
    Route::post('/reset', [AuthController::class, 'resetPass'])->name('reset');
    Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
});

// User Routes
Route::group(['prefix' => 'user', 'as' => 'user.', 'middleware' => ['auth', 'userPermission']], function () {
    Route::get('/profile', [ProfileController::class, 'index'])->name('profile');
});

// NGO Routes
Route::group(['prefix' => 'ngo', 'as' => 'ngo.', 'middleware' => ['auth', 'ngoPermission']], function () {
    Route::get('/dashboard', [NgoController::class, 'Dashboard'])->name('dashboard');
});

// Admin Routes
Route::group(['prefix' => 'admin', 'as' => 'admin.', 'middleware' => ['auth', 'adminPermission']], function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
});
