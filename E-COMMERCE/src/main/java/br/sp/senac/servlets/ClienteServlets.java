package br.sp.senac.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import br.sp.senac.model.Cliente;

@WebServlet("/ClienteServlets")
public class ClienteServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ClienteServlets() {
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cliente novoCliente = new Cliente ();
		
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String telefone = request.getParameter("telefone");
		String senha = request.getParameter("senha");
		String cep = request.getParameter("cep");
		String email = request.getParameter("email");
		String regexNome = "^[\\p{L} .'-]+$";
		String regexNumeros = "\\d+";
		StringBuilder erros = new StringBuilder();
		
		if(nome == null || nome.trim().isEmpty() || !nome.matches(regexNome)) {
			erros.append( ""
					+ "<h2>Ops! um erro foi encontrado na caixa NOME.</h2"
					+ "	<p>Nome inválido! Use apenas letras e espaços :)</p>");
		}
		else {
			novoCliente.setNome(request.getParameter("nome"));
		}
			
		if(telefone.trim().isEmpty() || cpf.trim().isEmpty() || cep.trim().isEmpty() || 
				!telefone.matches(regexNumeros) || !cpf.matches(regexNumeros) || !cpf.matches(regexNumeros)){
			erros.append(""
					+ "<h2> Ops! um erro foi encontrado nas caixas ou telefone ou CPF ou CEP.</h2>"
					+ "<p>Por favor Inserir somentes números :)</p>");
		}
		else {
			novoCliente.setCep(request.getParameter("cep"));
			novoCliente.setTelefone(request.getParameter("telefone"));
			novoCliente.setCpf(request.getParameter("cpf"));
		}
		
		
		
		 if (erros.length() > 0) {
		        request.setAttribute("mensagemErro", erros.toString());
		        request.getRequestDispatcher("/views/clientes/erroCadastro.jsp").forward(request, response);
		        return;
		    }
		 	
		 	novoCliente.setSenha(request.getParameter(senha));
		 	novoCliente.setEmail(request.getParameter("email"));
		 	novoCliente.setBairro(request.getParameter("bairro"));
			novoCliente.setComplemento(request.getParameter("complemento"));
			novoCliente.setEstado(request.getParameter("estado"));
			
			HttpSession session = request.getSession();
			session.setAttribute("emailCadastrado", email);
			session.setAttribute("senhaCadastrada", senha);
			session.setAttribute("nome", nome);
			
			
		request.setAttribute("cliente", novoCliente);
		request.getRequestDispatcher("/views/clientes/login.jsp").forward(request, response);
	}

}
