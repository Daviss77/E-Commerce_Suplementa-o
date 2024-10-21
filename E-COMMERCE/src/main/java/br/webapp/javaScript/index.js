const btMenu = document.querySelector('.menu');
const btSaiMenu  = document.querySelector('.btVoltar');
const apareceMenu = document.querySelector('#hamburguer');
const marcas = document.querySelector('#marcas');

btMenu.addEventListener('click', function(e){
    if(apareceMenu.style.display == 'block'){
        apareceMenu.style.display = 'none';
    }
    else{
        apareceMenu.style.display = 'block';
    }
})

btSaiMenu.addEventListener('click', function(e){
    if(apareceMenu.style.display =='none'){
        apareceMenu.style.display = 'block';
    }
    else{
        apareceMenu.style.display = 'none';
    }
})

marcas.addEventListener('click', function(e){
    const displayMarcas = document.querySelector('#produtos')
    if(displayMarcas.style.display == 'block'){
        displayMarcas.style.display = 'none';
    }
    else{
        displayMarcas.style.display = 'block';
    }
})