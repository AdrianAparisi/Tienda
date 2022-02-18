//Opcion para el icono de añadir nuevoa direccion
const open = document.getElementById('openAddDirection');
const add_container = document.getElementById('addContainerDirection');
const close = document.getElementById('btnCloseDirection');

open.addEventListener('click', () => {
    add_container.classList.add('showDirection');
});

close.addEventListener('click', () => {
    add_container.classList.remove('showDirection');
});

//Opcion para el icono de añadir avatar
const openAvatar = document.getElementById('openAddAvatar');
const add_container_avatar = document.getElementById('addContainerAvatar');
const closeAvatar = document.getElementById('btnCloseAvatar');

openAvatar.addEventListener('click', () => {
    add_container_avatar.classList.add('showAvatar');
});

closeAvatar.addEventListener('click', () => {
    add_container_avatar.classList.remove('showAvatar');
});


let cart = [];

function addCart(event) {
    cart = localStorage.getItem('cart');
    let i;
    for (i = 0; i < cart.length; i++) {
        if (cart[i] === document.querySelector('.nameProduct')) {
            break;
        }
    }
    if(i !== cart.length)
        cart.push(event.target.id);
    localStorage.setItem('cart', cart);
}

function loadPage() {
    cart = localStorage.getItem('cart');
}


function validate(event) {
    event.preventDefault();

    let errors = false;

    let elements = event.target.elements;

    for (let i = 1; i < elements.length - 1; i++) {
        let input = elements[i]

        if ((input.value.trim() === '')) {
            errors = true;
            break;
        }

        if (input.id === 'email' && (!input.value.includes('@') || !input.value.includes('.'))) {
            errors = true;
            break;
        }
    }

    return errors;
}


