package br.sp.senac.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import br.sp.senac.model.Cliente;
import br.sp.senac.model.DAOcliente;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import br.sp.senac.model.Cliente;
import br.sp.senac.model.DAOcliente;

/**
 * Servlet implementation class ClienteServlet
 */
@WebServlet(urlPatterns = { "/ClienteServlet", "/main", "/insert", "/select", "/update", "/delete" })
public class ClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    DAOcliente dao = new DAOcliente();
	Cliente cliente = new Cliente();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClienteServlet() {
        super();
    }

    /**
     * Processa as requisições GET e POST de forma centralizada.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        dao.testeconexao();

        // Pega o parâmetro 'flag' da requisição
        String flag = request.getParameter("flag");
        String action = request.getServletPath();
        System.out.println(action);
        try (PrintWriter out = response.getWriter()) {
            if (flag == null || flag.equals("enviar")) {
                // Redireciona para a página index.jsp
                request.getRequestDispatcher("/views/index.jsp").forward(request, response);
            } else {
                // Caso o valor de 'flag' seja outro, você pode processar conforme necessário
                out.println("<html><body>");
                out.println("<h3>Flag: " + flag + "</h3>");
                out.println("</body></html>");
            }
        
        if (action.equals("/clientes")) {
            listarCliente(request, response);
        } else if (action.equals("/insert")) {
            novoCliente(request, response);
        } else if (action.equals("/select")) {
            listarCliente(request, response);
        } else if (action.equals("/update")) {
            editarCliente(request, response);
        } else if (action.equals("/delete")) {
            removerCliente(request, response);
        } else {
            response.sendRedirect("/views/index.jsp");
        }
       
        }  
        
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Chama o método processRequest para processar as requisições POST
        doGet(request, response);
    }


protected void novoCliente(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

	cliente.setNome(request.getParameter("nome"));
	cliente.setFone(request.getParameter("fone"));
	cliente.setEmail(request.getParameter("email"));
	cliente.setIdcpf(request.getParameter("idcpf"));
	cliente.setsenha(request.getParameter("senha"));
	cliente.setidendereco(request.getParameter("idendereco"));
	cliente.setestado(request.getParameter("estado"));
	cliente.setbairro(request.getParameter("bairro"));
	cliente.setdatacriacao(request.getParameter("datacadastro"));
 
    // Chama o método do DAO para inserir o cliente no banco de dados
    dao.inserirCliente(cliente);

    // Redireciona para a página principal (clientes.jsp)
    response.sendRedirect("/views/index.jsp");
}
protected void listarCliente(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String idcon = request.getParameter("idcon");
	cliente.setIdcon(idcon);
	dao.selecionarCliente(cliente);

	request.setAttribute("idcon", cliente.getIdcon());
	request.setAttribute("nome", cliente.getNome());
	request.setAttribute("fone", cliente.getFone());
	request.setAttribute("email", cliente.getEmail());
    request.setAttribute("idcpf", cliente.getIdcpf());
	request.setAttribute("senha", cliente.getsenha());
	request.setAttribute("idendereco", cliente.getidendereco());
	request.setAttribute("estado", cliente.getestado());
	request.setAttribute("bairro", cliente.getbairro());
	request.setAttribute("datacadastro", cliente.getdatacriacao());



	RequestDispatcher rd = request.getRequestDispatcher("editar.jsp");
	rd.forward(request, response);
}


protected void editarCliente(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Obtém os dados do cliente para edição
    cliente.setIdcon(request.getParameter("idCliente"));
    cliente.setNome(request.getParameter("nome"));
    cliente.setFone(request.getParameter("telefone"));
    cliente.setEmail(request.getParameter("email"));
    cliente.setIdcpf(request.getParameter("cpf"));
    cliente.setsenha(request.getParameter("senha"));
    cliente.setestado(request.getParameter("estado"));
    cliente.setbairro(request.getParameter("bairro"));
    cliente.setIdcon(request.getParameter("cep"));
    cliente.setdatacriacao(request.getParameter("datacadastro"));

    // Atualiza o cliente no banco de dados
    dao.alterarCliente(cliente);

    // Redireciona para a página principal
    response.sendRedirect("/views/index.jsp");
}

protected void removerCliente(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Obtém o ID do cliente a ser removido
    String idCliente = request.getParameter("idCliente");

    // Define o ID no JavaBeans para exclusão
    cliente.setIdcon(idCliente);

    // Remove o cliente do banco de dados
    dao.deletarCliente(cliente);

    // Redireciona para a página principal
    response.sendRedirect("/views/index.jsp");
}
}