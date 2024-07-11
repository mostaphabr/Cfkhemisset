<?php
namespace App\Http\Controllers;

use App\Models\Option;
use Illuminate\Http\Request;

class OptionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $options = Option::all();
        return response()->json($options);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nom_option' => 'required|string|max:255',
            'filiere_id' => 'required|exists:filieres,id',
        ]);

        $option = Option::create([
            'nom_option' => $request->nom_option,
            'filiere_id' => $request->filiere_id,
        ]);

        return response()->json($option, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Option $option)
    {
        return response()->json($option);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Option $option)
    {
        $request->validate([
            'nom_option' => 'sometimes|required|string|max:255',
            'filiere_id' => 'sometimes|required|exists:filieres,id',
        ]);

        $option->update([
            'nom_option' => $request->nom_option ?? $option->nom_option,
            'filiere_id' => $request->filiere_id ?? $option->filiere_id,
        ]);

        return response()->json($option);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Option $option)
    {
        $option->delete();

        return response()->json(null, 204);
    }
}
