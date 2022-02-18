let names = document.querySelectorAll('.name');

function filter(event) {
    let filt = document.querySelector('#search').value;
    for (const name of names) {
        if (!name.textContent.toLowerCase().includes(filt.toLowerCase())) {
            name.closest('.card').hidden = true;
        } else {
            name.closest('.card').hidden = false;
        }
    }
}


document.querySelectorAll('section').forEach(element => {
    element.onclick = function() {
        element.querySelector('.faq-answer').classList.toggle('openMenu');
        element.querySelector('.question').classList.toggle('active');
        element.querySelector('.arrow-container').classList.toggle('up');
    };
});
var hamburguer = document.getElementById('Hamburguer')
var menu = document.getElementById('Menu')

hamburguer.addEventListener("click", function () {
    menu.classList.toggle('openMenu')
});

//Opcion para que el icono de usuario deje registrar e iniciar sesión
const open = document.getElementById('openUser');
const modal_container = document.getElementById('modal_container');
const close = document.getElementById('btnClose');

openUser.addEventListener('click', () => {
  modal_container.classList.add('show');
});

close.addEventListener('click', () => {
  modal_container.classList.remove('show');
});
