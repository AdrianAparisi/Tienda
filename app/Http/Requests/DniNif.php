<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\Rule;

class DniNif implements Rule {

    public function __construct() {}


    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value) {
        $table = 'TRWAGMYFPDXBNJZSQVHLCKE';
        return ($this->dni($value, $table) || $this->nif($value, $table));
    }

    public function dni($value, $table) {
        $this->type = '';
        $nieRegEx = '/^[0-9]{8}[A-Z]$/i';

        if (preg_match($nieRegEx, $value))
            return (strcmp($table[substr($value, 0, 8) % 23], $value[8]) == 0);

        return false;
    }

    public function nif($value, $table) {
        $xyz = array('X', 'Y', 'Z');
        $toReplace = array(0, 1, 2);
        $nieRegEx = '/^[KLMXYZ][0-9]{7}[A-Z]$/i';

        if (preg_match($nieRegEx, $value))
            return (strcmp($table[substr(str_replace($xyz, $toReplace, $value), 0, 8) % 23], $value[8]) == 0);

        return false;
    }

    /**
     * Get the validation error message.
     *
     * @return string|array
     */
    public function message() {
        return 'Introduce un DNI o NIF válido ';
    }
}
