<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Institut extends Model
{

    use HasFactory;

    protected $fillable = [
        'nom_institut',
    ];
    
    public function users()
    {
        return $this->hasMany(User::class);
    }

    public function evenements()
    {
        return $this->hasMany(User::class);
    }
    
    public function secteurs()
    {
        return $this->hasMany(Secteur::class);
    }
}
