<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Filiere extends Model
{
    use HasFactory;

    public function secteur(){
        return $this->belongsTo(Secteur::class);
    }

    public function options(){
        return $this->hasMany(Option::class);
    }

}
