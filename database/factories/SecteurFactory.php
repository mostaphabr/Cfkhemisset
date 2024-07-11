<?php

namespace Database\Factories;

use App\Models\Institut;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Secteur>
 */
class SecteurFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
           'nom_secteur' => fake()->company() ,
           'institut_id' =>Institut::factory(),

        ];
    }
}
