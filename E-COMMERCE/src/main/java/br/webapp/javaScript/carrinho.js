

export function getInfos(product){
    const newProduct = document.querySelector(".container-table tbody");
    console.log(newProduct)  // Seleciona o <tbody> do carrinho
    if (!newProduct) {
        console.error("Elemento #infoProdutos não encontrado.");
        return;
    }
    const newLine = document.createElement('tr'); // Cria uma nova linha (tr)

    // Adiciona o ID do produto como um atributo para facilitar manipulação
    newLine.setAttribute('data-id', product.id);

    // Preenche a nova linha com as informações do produto
    newLine.innerHTML = `
        <td><img src="${product.image}" alt="${product.name}" style="width: 50px;"></td>
        <td>${product.name}</td>
        <td>
            <p class="amount">
                <button class="diminuir">-</button>
                <span class="value">${product.quantity}</span>
                <button class="aumentar">+</button>
            </p>
        </td>
        <td>R$ ${product.totalPrice}</td>
        <td>
            <button class="clean">
                <img src="../../imagens/Icons/lixeira.png" alt="Lixeira">
            </button>
        </td>
    `;

    // Adiciona a nova linha ao <tbody>
    newProduct.appendChild(newLine);
    
}

document.addEventListener("DOMContentLoaded", () => {
    initializeCart();
});

export function initializeCart() {
    const cart = JSON.parse(localStorage.getItem("cart")) || [];
    const tableBody = document.querySelector(".container-table tbody");

    if (!tableBody) {
        console.error("Tabela do carrinho não encontrada.");
        return;
    }

    cart.forEach(product => {
        getInfos(product); // Renderiza cada produto no carrinho
    });
}


function aumentarQuantidade(event) {
    const row = event.target.closest('tr'); // Acha a linha do produto
    const productId = row.getAttribute('data-id'); // Obtém o ID do produto
    let cart = JSON.parse(localStorage.getItem('cart')) || []; // Obtém o carrinho do localStorage
    const productIndex = cart.findIndex(item => item.id == productId); // Encontra o produto no carrinho

    if (productIndex !== -1) {
        let product = cart[productIndex];
        product.quantity += 1; // Aumenta a quantidade
        product.totalPrice = product.value * product.quantity; // Atualiza o preço total

        cart[productIndex] = product; // Atualiza o carrinho
        localStorage.setItem('cart', JSON.stringify(cart)); // Salva o carrinho atualizado no localStorage

        // Atualiza a interface (DOM)
        row.querySelector('.value').textContent = product.quantity;
        row.querySelector('td:nth-child(4)').textContent = `R$ ${product.totalPrice.toFixed(2)}`;
        valueTotal(); // Recalcula o valor total do carrinho
    }
}

function diminuirQuantidade(event) {
    const row = event.target.closest('tr'); // Acha a linha do produto
    const productId = row.getAttribute('data-id'); // Obtém o ID do produto
    let cart = JSON.parse(localStorage.getItem('cart')) || []; // Obtém o carrinho do localStorage
    const productIndex = cart.findIndex(item => item.id == productId); // Encontra o produto no carrinho

    if (productIndex !== -1) {
        let product = cart[productIndex];
        if (product.quantity > 1) { // Impede a quantidade de ser menor que 1
            product.quantity -= 1; // Diminui a quantidade
            product.totalPrice = product.value * product.quantity; // Atualiza o preço total

            cart[productIndex] = product; // Atualiza o carrinho
            localStorage.setItem('cart', JSON.stringify(cart)); // Salva o carrinho atualizado no localStorage

            // Atualiza a interface (DOM)
            row.querySelector('.value').textContent = product.quantity;
            row.querySelector('td:nth-child(4)').textContent = `R$ ${product.totalPrice.toFixed(2).replace('.', ',')}`;
            valueTotal(); // Recalcula o valor total do carrinho
        }
    }
}

function excluirProduto(event) {
    const row = event.target.closest('tr'); // Acha a linha do produto
    const productId = row.getAttribute('data-id'); // Obtém o ID do produto
    let cart = JSON.parse(localStorage.getItem('cart')) || []; // Obtém o carrinho do localStorage

    // Remove o produto do carrinho
    cart = cart.filter(item => item.id != productId); 

    localStorage.setItem('cart', JSON.stringify(cart)); // Salva o carrinho atualizado no localStorage

    // Remove o produto da interface (DOM)
    row.remove();
    valueTotal(); // Recalcula o valor total do carrinho
}

function valueTotal() {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const totalElement = document.querySelector("#payTotal"); // Supondo que exista um elemento com ID "totalPrice" no HTML
    const total = cart.reduce((sum, product) => sum + product.totalPrice, 0); // Soma o preço de todos os produtos
    totalElement.textContent = `R$ ${total.toFixed(2).replace('.', ',')}`;
}

function totalTest(){
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    let total = 0;

    // Percorrer todos os produtos e somar os preços totais
    cart.forEach(product => {
        total += parseFloat(product.totalPrice.replace(',', '.')); // Garantir que o valor esteja numérico
    });

    // Atualiza o DOM com o valor total
    const totalElement = document.querySelector('#payTotal'); // Supondo que o elemento onde o total será exibido tenha a classe .total-price
    if (totalElement) {
        totalElement.textContent = `R$ ${total.toFixed(2).replace('.', ',')}`;
    }
}

window.addEventListener('load', totalTest)

document.addEventListener("DOMContentLoaded", () => {
    // Adiciona os event listeners aos botões de aumentar, diminuir e excluir
    const aumentarBtns = document.querySelectorAll(".aumentar");
    const diminuirBtns = document.querySelectorAll(".diminuir");
    const excluirBtns = document.querySelectorAll(".clean");

    aumentarBtns.forEach(button => button.addEventListener("click", aumentarQuantidade));
    diminuirBtns.forEach(button => button.addEventListener("click", diminuirQuantidade));
    excluirBtns.forEach(button => button.addEventListener("click", excluirProduto));
});
