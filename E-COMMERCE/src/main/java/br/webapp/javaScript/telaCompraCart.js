

let addProductButton = document.querySelectorAll(".itemNeto .finalizar");

 function getDivDad(e){
    const div = e.target.closest('#containerPai');
    console.log(div);

    // Captura as informações do produto
    
    const imageProduct = div.querySelector(".image-product").src;
    const titleProduct = div.querySelector(".nomeProdutoCompra").innerText;
    let valueProduct = div.querySelector(".valor").textContent;
    valueProduct = parseFloat(valueProduct.replace("R$", "")).toFixed(2);
    const productId = Date.now();
    console.log(imageProduct, productId, titleProduct, valueProduct); 
//addProductButton.addEventListener("click", getDivDad);
    // Cria o objeto do produto
    let product = {
        id: productId,
        image: imageProduct,
        name: titleProduct,
        value: valueProduct,
        quantity: 1,
        totalPrice: valueProduct,
    };
    
    // Adiciona o produto ao carrinho no localStorage
    let cart = JSON.parse(localStorage.getItem("cart")) || [];
    cart.push(product);
    //console.log(cart)
    localStorage.setItem("cart", JSON.stringify(cart));
    
}

addProductButton.forEach(button => {
    button.addEventListener("click", getDivDad);
});
