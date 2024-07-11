<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use App\Models\Option;
use App\Models\Filiere;
use App\Models\Secteur;
use App\Models\Institut;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        Filiere::factory()->count(10)->create();
        Institut::factory()->count(10)->create();
        Option::factory()->count(10)->create();
        Secteur::factory()->count(10)->create();
        User::factory()->count(10)->create();




    }
}
