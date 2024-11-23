
let addButton = document.querySelectorAll('.add')[0];
let subButton = document.querySelectorAll('.Sub')[0];

    
function somarProduto(e) {
    let precoElement = event.target.closest('.itemNeto').querySelector('.preco');

    let precoAtual = parseFloat(precoElement.textContent.replace(" R$", ""));

    let precoProduto = parseFloat(precoElement.getAttribute("data-preco"));

    precoAtual += precoProduto; 

    precoElement.textContent = precoAtual.toFixed(2) + " R$";
}

function subtrairPreco(event){
    let precoElement = event.target.closest('.itemNeto').querySelector('.preco');

    let precoAtual = parseFloat(precoElement.textContent.replace(" R$", ""));

    let precoProduto = parseFloat(precoElement.getAttribute("data-preco"));
    if(precoAtual < precoProduto){
        alert('ERRO! O valor já está zerado')
    }
    else{
        precoAtual -= precoProduto;
         
    }


    precoElement.textContent = precoAtual.toFixed(2) + " R$";
}

// Adiciona o event listener a cada botão
    addButton.addEventListener("click", somarProduto);
    subButton.addEventListener('click', subtrairPreco);