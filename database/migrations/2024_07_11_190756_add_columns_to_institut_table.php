<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('instituts', function (Blueprint $table) {
            $table->string('SousTitre')->after('nom_institut');
            $table->string('phone')->after('SousTitre');
            $table->string('address')->after('phone');
            $table->string('img')->after('address');
            $table->string('location')->after('img');
            $table->string('nombreStagiaires')->after('img');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('instituts', function (Blueprint $table) {
            $table->dropColumn('SousTitre');
            $table->dropColumn('phone');
            $table->dropColumn('address');
            $table->dropColumn('img');
            $table->dropColumn('location');
            $table->dropColumn('nombreStagiaires');
        });
    }
};
