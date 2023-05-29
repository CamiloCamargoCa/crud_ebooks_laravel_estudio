<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Author
 * @package App\Models
 * @version December 12, 2018, 7:43 pm UTC
 *
 * @property string name
 * @property string bio
 * @property string image
 */
class Author extends Model
{
    use SoftDeletes;

    public $table = 'authors';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'name',
        'bio',
        'image'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'name' => 'string',
        'bio' => 'string',
        'image' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'name' => 'required',
        'bio' => 'required'
    ];

    
}
