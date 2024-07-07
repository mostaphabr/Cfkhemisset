<?php

namespace App\Http\Controllers;

use App\Models\Institut;
use Illuminate\Http\Request;

class InstitutController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $instituts = Institut::all();
        return response()->json($instituts);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Institut $institut)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Institut $institut)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Institut $institut)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Institut $institut)
    {
        //
    }
}
