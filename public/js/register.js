function validateForm(event) {
    event.preventDefault();

    let errors = false;

    let elements = event.target.elements;

    for (let i = 1; i < elements.length - 1; i++) {
        let input = elements[i];
        let p = document.querySelector('#' + input.id + '_p');

        if ((input.value.trim() === '') || (input.id === 'terms' && !input.checked)) {
            p.textContent = 'Este campo es obligatorio';
            errors = true;
            continue;
        } else {
            p.textContent = '';
        }

        if (input.id === 'email' && (!input.value.includes('@') || !input.value.includes('.'))) {
            p.textContent = 'Email incorrecto';
            errors = true;
            continue;
        } else {
            p.textContent = '';
        }

        if (input.id === 'nif') {
            let table = 'TRWAGMYFPDXBNJZSQVHLCKE';
            if (!dni(input.value, table) && !nif(input.value, table)) {
                errors = true;
                p.textContent = 'Introduce un NIF válido';
                continue;
            }
        }

        if (input.id === 'password_confirmation' && elements[i - 1].value !== input.value) {
            p.textContent = 'Las contraseñas no coinciden';
            errors = true;
        } else {
            p.textContent = '';
        }
    }

    if (!errors) {
        event.target.submit();
    }
}


function dni(value, table) {
    let nieRegEx = /^[0-9]{8}[A-Z]$/i;

    if (nieRegEx.test(value)) {
        return table[Number(value.substring(0, 8)) % 23] === value[8];
    }

    return false;
}

function nif(value, table) {
    let nieRegEx = /^[KLMXYZ][0-9]{7}[A-Z]$/i;
    let replacedString = '';

    if (value.includes('X')) {
        replacedString = value.replace('X', '0');
    } else if (value.includes('Y')) {
        replacedString = value.replace('Y', '1');
    } else {
        replacedString = value.replace('Z', '2');
    }

    if (nieRegEx.test(value)) {
        console.log('nif');
        return table[Number(replacedString.substring(0, 8)) % 23] === value[8];
    }

    return false;
}