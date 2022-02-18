<?php

namespace App\Actions\Fortify;

use App\Http\Requests\DniNif;

trait NIFValidationRules {

    /**
     * Get the validation rules used to validate DNI / NIF.
     *
     * @return array
     */
    protected function nifRules() {
        return ['required', 'string', new DniNif];
    }
}
