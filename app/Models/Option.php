<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Option extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom_option',
    ];
    public function filiere(){
        return $this->belongsTo(Filiere::class);
    }

}
