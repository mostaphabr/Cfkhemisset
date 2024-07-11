<?php

namespace Database\Factories;

use App\Models\Filiere;
use App\Models\Secteur;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Filiere>
 */
class FiliereFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

     protected $model = Filiere::class;

    public function definition(): array
    {
        return [
            'nom_filiere' => fake()->company,
            'secteur_id' => Secteur::factory(),
        ];
    }
}
