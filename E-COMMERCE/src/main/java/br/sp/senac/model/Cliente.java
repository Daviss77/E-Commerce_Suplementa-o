package br.sp.senac.model;
import java.io.Serializable;


public class Cliente {
	    private String idcon;       // ID do cliente (identificador)
	    private String nome;        // Nome do cliente
	    private String fone;
	    private String email;  // Telefone do cliente
	    private String idcpf;       // CPF do cliente
	    private String senha;       // Senha do cliente
	    private String datacriacao; // Data de criação (registro) do cliente
	    private String idendereco;  // ID do endereço do cliente
	    private String estado;      // Estado do cliente
	    private String bairro;      // Bairro do cliente
		

	    // Construtor padrão (sem parâmetros)
	    public Cliente() {
	        super();
	    }

	    // Construtor com parâmetros para inicializar todos os campos
	    public Cliente(String idcon, String nome, String fone, String email, String idcpf, String senha,
	                     String datacriacao, String idendereco, String estado, String bairro) {
	        super();
	        this.idcon = idcon;
	        this.nome = nome;
	        this.fone = fone;
	        this.email = email;
	        this.idcpf = idcpf;
	        this.senha = senha;
	        this.datacriacao = datacriacao;
	        this.idendereco = idendereco;
	        this.estado = estado;
	        this.bairro = bairro;
	    }

	    // Getters e Setters
	    public String getIdcon() {
			return idcon;
		}

		public void setIdcon(String idcon) {
			this.idcon = idcon;
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public String getFone() {
			return fone;
		}

		public void setFone(String fone) {
			this.fone = fone;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getIdcpf() {
			return idcpf;
		}

		public void setIdcpf(String idcpf) {
			this.idcpf = idcpf;
		}

		public String getsenha() {
			return senha;
		}

		public void setsenha(String senha) {
			this.senha = senha;
		}

		public String getdatacriacao() {
			return datacriacao;
		}

		public void setdatacriacao(String datacriacao) {
			this.datacriacao = datacriacao;
		}

		public String getidendereco() {
			return idendereco;
		}

		public void setidendereco(String idendereco) {
			this.idendereco = idendereco;
		}
		public String getestado() {
			return estado;
		}

		public void setestado(String estado) {
			this.estado = estado;
		}
		public String getbairro() {
			return bairro;
		}

		public void setbairro(String bairro) {
			this.bairro = bairro;
		}

	}