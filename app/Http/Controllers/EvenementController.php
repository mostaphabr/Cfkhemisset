<?php

namespace App\Http\Controllers;

use App\Models\Evenement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EvenementController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $evenements = Evenement::all();
        return response()->json($evenements);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // Return data needed for creating a new event
        return response()->json(['message' => 'Form data for creating an event']);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'titre' => 'required|string|max:255',
            'description' => 'required|string',
            'type' => 'required|in:annonce,activite',
        ]);
        
        $institut_id = Auth::user()->institut_id;

        $evenement = Evenement::create([
            'titre' => $request->titre,
            'description' => $request->description,
            'type' => $request->type,
            'institut_id' => $institut_id,
        ]);

        return response()->json($evenement, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Evenement $evenement)
    {
        return response()->json($evenement);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Evenement $evenement)
    {
        // Return data needed for editing an event
        return response()->json(['message' => 'Form data for editing an event', 'evenement' => $evenement]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Evenement $evenement)
    {
        $request->validate([
            'titre' => 'required|string|max:255',
            'description' => 'required|string',
            'type' => 'required|in:annonce,activite',
        ]);

        $evenement->update([
            'titre' => $request->titre ?? $evenement->titre,
            'description' => $request->description ?? $evenement->description,
            'type' => $request->type ?? $evenement->type,
            'institut_id' => Auth::user()->institut_id, // Ensuring the institut_id remains the same
        ]);

        return response()->json($evenement);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Evenement $evenement)
    {
        $evenement->delete();

        return response()->json(null, 204);
    }
}
