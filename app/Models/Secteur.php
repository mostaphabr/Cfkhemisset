<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Secteur extends Model
{
    use HasFactory;

    public function institut(){
        return $this->belongsTo(Institut::class);
    }

    public function filieres()
    {
        return $this->hasMany(Filiere::class);
    }
}
