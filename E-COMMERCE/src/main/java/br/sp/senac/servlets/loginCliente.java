package br.sp.senac.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import br.sp.senac.model.Cliente;

/**
 * Servlet implementation class loginCliente
 */
@WebServlet("/loginCliente")
public class loginCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginCliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String admin = request.getParameter("email");
		
		HttpSession session = request.getSession(false);
	
		
		if(session != null) {
			String emailCadastrado 	= (String) session.getAttribute("emailCadastrado");
			String senhaCadastrada = (String) session.getAttribute("senhaCadastrada");
			String accessAdmin = (String) session.getAttribute("accessAdmin");
			String nome = (String) session.getAttribute("nome");
			
		if(email.equals("admin@gmail.com")&& senha.equals("admin123")){
			
			  request.setAttribute("cliente", nome);
			  request.getRequestDispatcher("/views/adm/relatorio.jsp").forward(request, response);
		}
			   if (email.equals(emailCadastrado) && senha.equals(senhaCadastrada)) {
				   request.setAttribute("cliente", nome);
				   request.getRequestDispatcher("/views/index.jsp").forward(request, response);
		        }
		    }
		}
	}

