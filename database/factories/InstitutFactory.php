<?php

namespace Database\Factories;

use App\Models\Institut;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\institut>
 */
class InstitutFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

     protected $model = Institut::class;
    public function definition(): array
    {
        return [
           'nom_institut' => fake()->company(),
        ];
    }
}
