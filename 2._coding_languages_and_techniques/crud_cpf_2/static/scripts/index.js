function toggleUpdateForm(userId) {
    const updateForm = document.querySelector(`.update-form[data-user-id="${userId}"]`);
    if (updateForm) {
        updateForm.style.display = (updateForm.style.display === 'none') ? 'block' : 'none';
    }
}


function atualizarRelogio() {
    const relogio = document.getElementById('relogio');
    const agora = new Date();
    const hora = agora.getHours();
    const minutos = agora.getMinutes();
    const segundos = agora.getSeconds();
    relogio.innerHTML = `${hora}:${minutos}:${segundos}`;
}


