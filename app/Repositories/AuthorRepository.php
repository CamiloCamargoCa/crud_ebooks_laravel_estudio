<?php

namespace App\Repositories;

use App\Models\Author;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class AuthorRepository
 * @package App\Repositories
 * @version December 12, 2018, 7:43 pm UTC
 *
 * @method Author findWithoutFail($id, $columns = ['*'])
 * @method Author find($id, $columns = ['*'])
 * @method Author first($columns = ['*'])
*/
class AuthorRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'bio',
        'image'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Author::class;
    }
}
