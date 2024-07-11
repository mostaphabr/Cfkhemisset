<?php

namespace App\Http\Controllers;

use App\Models\Secteur;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SecteurController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $secteurs = Secteur::all();
        return response()->json($secteurs);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nom_secteur' => 'required|string|max:255',
        ]);

        $institut_id = Auth::user()->institut_id;

        $secteur = Secteur::create([
            'nom_secteur' => $request->nom_secteur,
            'institut_id' => $institut_id,
        ]);

        return response()->json($secteur, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Secteur $secteur)
    {
        return response()->json($secteur);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Secteur $secteur)
    {
        $request->validate([
            'nom_secteur' => 'sometimes|required|string|max:255',
        ]);

        $institut_id = Auth::user()->institut_id;

        $secteur->update([
            'nom_secteur' => $request->nom_secteur ?? $secteur->nom_secteur,
            'institut_id' => $institut_id,
        ]);

        return response()->json($secteur);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Secteur $secteur)
    {
        $secteur->delete();

        return response()->json(null, 204);
    }
}
