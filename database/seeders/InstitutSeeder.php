<?php

namespace Database\Seeders;

use App\Models\Institut;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class InstitutSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Institut::factory()->count(10)->create();
    }
}
