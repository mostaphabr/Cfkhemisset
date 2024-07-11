<?php

namespace App\Http\Controllers;

use App\Models\Filiere;
use Illuminate\Http\Request;

class FiliereController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $filieres = Filiere::all();
        return response()->json($filieres);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // Return data needed for creating a new filiere
        return response()->json(['message' => 'Form data for creating a filiere']);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nom_filiere' => 'required|string|max:255',
            'secteur_id' => 'required|exists:secteurs,id',
        ]);

        $filiere = Filiere::create($request->all());

        return response()->json($filiere, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Filiere $filiere)
    {
        return response()->json($filiere);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Filiere $filiere)
    {
        // Return data needed for editing a filiere
        return response()->json(['message' => 'Form data for editing a filiere', 'filiere' => $filiere]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Filiere $filiere)
    {
        $request->validate([
            'nom_filiere' => 'sometimes|required|string|max:255',
            'secteur_id' => 'sometimes|required|exists:secteurs,id',
        ]);

        $filiere->update($request->all());

        return response()->json($filiere);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Filiere $filiere)
    {
        $filiere->delete();

        return response()->json(null, 204);
    }
}
