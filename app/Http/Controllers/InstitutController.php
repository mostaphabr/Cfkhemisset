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
        // Return data needed for creating a new institute
        return response()->json(['message' => 'Form data for creating an institute']);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nom_institut' => 'required|string|max:255',
        ]);

        $institut = Institut::create($request->all());

        return response()->json($institut, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Institut $institut)
    {
        return response()->json($institut);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Institut $institut)
    {
        // Return data needed for editing an institute
        return response()->json(['message' => 'Form data for editing an institute', 'institut' => $institut]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Institut $institut)
    {
        $request->validate([
            'nom_institut' => 'sometimes|required|string|max:255',
        ]);

        $institut->update($request->all());

        return response()->json($institut);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Institut $institut)
    {
        $institut->delete();

        return response()->json(null, 204);
    }
}
