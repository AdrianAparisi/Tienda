//Opcion para que el icono de usuario deje registrar e iniciar sesión
const openUser = document.getElementById('openUser');
const modal_container = document.getElementById('modal_container');
const close = document.getElementById('btnClose');

openUser.addEventListener('click', () => {
  modal_container.classList.add('show');
});

close.addEventListener('click', () => {
  modal_container.classList.remove('show');
});


