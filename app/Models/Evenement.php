<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Evenement extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom_evenement',
    ];
    public function institut(){
        return $this->belongsTo(Institut::class);
    }

    public function users(){
        return  $this->belongsToMany(User::class);
    }
}
