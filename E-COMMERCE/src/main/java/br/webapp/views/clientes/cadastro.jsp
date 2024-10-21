<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de cadastro</title>
    <link rel="stylesheet" href="../../css/clientes/cadastro.css">
</head>

<body>
    <div id="container">
        <div class = "form-image">
            <img src="../../imagens/Icons/imgCadastro.jpeg">
        </div>
        
        <div class="form">
            <form action=${pageContext.request.contextPath}/ClienteServlets method="post">
                <div class="form-header">
                    <div class="title">
                        <h1>cadastra-se</h1>
                    </div>
                    <div class="submit-button">
                        <button type="submit">ENVIAR</button>
                    </div>
                </div>

                <div class="input-group">
                    <div class="input-column">
                        <div class="input-box">
                            <label for="nome">NOME COMPLETO:</label>
                            <input id="nome" type="text" name="nome" placeholder="Digite seu nome completo" required>
                        </div>
                        <div class="input-box">
                            <label for="cpf">CPF:</label>
                            <input id="cpf" type="text" name="cpf" placeholder="Digite apenas nÃºmeros" pattern="\d{11}" inputmode="numeric" required>
                        </div>
                        <div class="input-box">
                            <label for="telefone">TELEFONE:</label>
                            <input id="telefone" type="tel" name="telefone" placeholder="(xx) xxxx-xxxx" required>
                        </div>
                        <div class="input-box">
                            <label for="bairro">BAIRRO:</label>
                            <input id="bairro" type="text" name="bairro" placeholder="Digite seu bairro" required>
                        </div>
                        <div class="input-box">
                            <label for="email">E-MAIL:</label>
                            <input id="email" type="email" name="email" placeholder="Digite seu e-mail" required>
                        </div>
                    </div>
                    <div class="input-column">
                        <div class="input-box">
                            <label for="estado">ESTADO:</label>
                            <select id="estado" name="estado" required>
                                <option value="" disabled selected>Selecione seu estado</option>
                                <option value="AC">Acre</option>
                                <option value="AL">Alagoas</option>
                                <option value="AP">Amapá</option>
                                <option value="BA">Bahia</option>
                                <option value="CE">Ceará</option>
                                <option value="DF">Distrito Federal</option>
                                <option value="ES">Espirito Santo</option>
                                <option value="GO">Goiás</option>
                                <option value="MA">Maranhão</option>
                                <option value="MT">Mato Grosso</option>
                                <option value="MS">Mato Grosso do Sul</option>
                                <option value="MG">Minas Gerais</option>
                                <option value="PA">Pará</option>
                                <option value="PB">Paráiba</option>
                                <option value="PR">Paraná</option>
                                <option value="PE">Pernambuco</option>
                                <option value="PI">Piauí</option>
                                <option value="RJ">Rio de Janeiro</option>
                                <option value="RN">Rio Grande do Norte</option>
                                <option value="RS">Rio Grande do Sul</option>
                                <option value="RO">Rondônia</option>
                                <option value="RR">Roraima</option>
                                <option value="SC">Santa Catarina</option>
                                <option value="SP">São Paulo</option>
                                <option value="SE">Sergipe</option>
                                <option value="TO">Tocantins</option>
                            </select>
                        </div>
                        <div class="input-box">
                            <label for="cep">CEP:</label>
                            <input id="cep" type="text" name="cep" placeholder="Digite apenas nÃºmeros" pattern="\d{8}" required>
                        </div>
                        <div class="input-box">
                            <label for="complemento">COMPLEMENTO:</label>
                            <input id="complemento" type="text" name="complemento" placeholder="Campo opcional">
                        </div>
                        <div class="input-box">
                            <label for="senha">SENHA:</label>
                            <input id="senha" type="password" name="senha" placeholder="Crie uma senha" required>
                        </div>
                        <div class="input-box">
                            <label for="Senha">CONFIRME SUA SENHA:</label>
                            <input id="senha" type="password" name="senha" placeholder="Confirme sua senha" required>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
 
</body>
</html>