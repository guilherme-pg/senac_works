document.addEventListener('DOMContentLoaded', function () {
    // Inicializa o relógio
    atualizarRelogio();
    setInterval(atualizarRelogio, 1000);

    const salvarBtn = document.getElementById('salvarBtn');
    salvarBtn.addEventListener('click', salvarAluno);

    const btnAtualizar = document.getElementById('btnAtualizar');
    btnAtualizar.addEventListener('click', atualizarAluno);

    renderizarLista();
});

let alunos = JSON.parse(localStorage.getItem('alunos')) || [];
let alunoParaEditar = null;

function renderizarLista() {
    const listaAlunos = document.getElementById('listaAlunos');
    listaAlunos.innerHTML = '';
    alunos.forEach((aluno, index) => {
        const itemLista = document.createElement('li');
        const horaCadastro = new Date(aluno.horaCadastro);
        const horaFormatada = `${horaCadastro.getHours()}:${horaCadastro.getMinutes()}:${horaCadastro.getSeconds()}`;
        itemLista.innerHTML = `Nome: ${aluno.nome}, Idade: ${aluno.idade}, Hora do Cadastro: ${horaFormatada}`;

        const btnExcluir = document.createElement('button');
        btnExcluir.textContent = 'Excluir';
        btnExcluir.classList.add('excluir');
        btnExcluir.onclick = function() {
            exibirConfirmacao(index);
        };

        const btnEditar = document.createElement('button');
        btnEditar.textContent = 'Editar';
        btnEditar.classList.add('editar');
        btnEditar.onclick = function() {
            carregarParaEdicao(index);
        };

        itemLista.appendChild(btnExcluir);
        itemLista.appendChild(btnEditar);
        listaAlunos.appendChild(itemLista);
    });
}

function salvarAluno() {
    const nome = document.getElementById('nome').value;
    const idade = document.getElementById('idade').value;
    const horaCadastro = new Date();

    alunos.push({ nome, idade, horaCadastro });
    localStorage.setItem('alunos', JSON.stringify(alunos));

    document.getElementById('nome').value = '';
    document.getElementById('idade').value = '';
    renderizarLista();
}

function exibirConfirmacao(index) {
    const confirmacao = confirm("Tem certeza que deseja excluir este aluno?");
    if (confirmacao) {
        excluirAluno(index);
    }
}

function excluirAluno(index) {
    alunos.splice(index, 1);
    localStorage.setItem('alunos', JSON.stringify(alunos));
    renderizarLista();
}

function carregarParaEdicao(index) {
    const aluno = alunos[index];
    document.getElementById('nome').value = aluno.nome;
    document.getElementById('idade').value = aluno.idade;

    document.getElementById('btnAtualizar').style.display = 'inline-block';
    alunoParaEditar = index;
}

function atualizarAluno() {
    const nome = document.getElementById('nome').value;
    const idade = document.getElementById('idade').value;

    alunos[alunoParaEditar].nome = nome;
    alunos[alunoParaEditar].idade = idade;

    localStorage.setItem('alunos', JSON.stringify(alunos));

    document.getElementById('nome').value = '';
    document.getElementById('idade').value = '';
    document.getElementById('btnAtualizar').style.display = 'none';
    alunoParaEditar = null;

    renderizarLista();
}

function atualizarRelogio() {
    const relogio = document.getElementById('relogio');
    const agora = new Date();
    const hora = agora.getHours();
    const minutos = agora.getMinutes();
    const segundos = agora.getSeconds();
    relogio.innerHTML = `${hora}:${minutos}:${segundos}`;
}
