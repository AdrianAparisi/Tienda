var hamburguer = document.getElementById('Hamburguer')
var menu = document.getElementById('Menu')

hamburguer.addEventListener("click", function() {
    menu.classList.toggle('openMenu')
});

//Opcion para el icono de añadir nuevo producto
const open = document.getElementById('openAdd');
const add_container = document.getElementById('addContainer');
const close = document.getElementById('btnClose');

open.addEventListener('click', () => {
    add_container.classList.add('show');
});

close.addEventListener('click', () => {
    add_container.classList.remove('show');
});


function del(event) {
    event.preventDefault();
    let form = document.querySelector('.form');
    toDel(form);
}

async function toDel(form) {
    console.log(form.id);
    let apiCall = await fetch('/api/' + form.id, {
        method: 'POST',
        body: JSON.stringify({
            _method: 'DELETE'
        })
    });
    let response = await apiCall;
    console.log(response);
}


function save(event) {
    event.preventDefault();
    let form = document.querySelector('.form');
    toSave(form);
}

async function toSave(form) {
    let apiCall = await fetch('/api/' + form.id, {
        method: 'POST',
        body: new FormData(form)
    })
    let response = await apiCall;
    console.log(response);
}


let names = document.querySelectorAll('.name');

function filterSearch(event) {
    let filt = document.querySelector('#search').value;
    for (const name of names) {
        if (!name.value.toLowerCase().includes(filt.toLowerCase())) {
            name.closest('tr').hidden = true;
        } else {
            name.closest('tr').hidden = false;
        }
    }
}

let categories = document.querySelectorAll('.category');

function filterCategory(event) {
    let filt = event.target.value;

    for (const category of categories) {
        if (!category.value.includes(filt)) {
            category.closest('tr').hidden = true;
        } else {
            category.closest('tr').hidden = false;
        }
    }
}
