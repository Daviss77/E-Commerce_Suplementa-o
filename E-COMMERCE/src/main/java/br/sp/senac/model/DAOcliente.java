package br.sp.senac.model;


	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.util.ArrayList;


	public class DAOcliente {

		private String driver = "com.mysql.cj.jdbc.Driver";
		private String url = "jdbc:mysql://127.0.01:3306/dbagenda?useTimezone=true&serverTimezone=UTC";
		private String user = "root";
		private String password = "Cuild123@#1806A";

		private Connection conectar() {
			Connection con = null;
			try {	
				Class.forName(driver);
				con = DriverManager.getConnection(url, user, password);
				return con;
			} catch (Exception e) {
				System.out.println(e);
				return null;
			}
		}

		public void testeconexao() {
			try {
				Connection con = conectar();
				System.out.println(con);
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}

		public void inserirCliente(Cliente cliente) {
			String create = "INSERT INTO cliente (nome, fone, email, idcpf, senha, idendereco, estado, bairro)"
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?);";

			try {
				Connection con = conectar();
				PreparedStatement pst = con.prepareStatement(create);

				pst.setString(1, cliente.getNome());
				pst.setString(2, cliente.getFone());
				pst.setString(3, cliente.getEmail());
	            pst.setString(4, cliente.getIdcpf());
				pst.setString(5, cliente.getsenha());
	            pst.setString(6, cliente.getidendereco());
	            pst.setString(7, cliente.getestado());
	            pst.setString(8, cliente.getbairro());

				pst.executeUpdate();
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}

		public ArrayList<Cliente> listarCliente() {
			ArrayList<Cliente> cliente = new ArrayList<>();

			String read = "select * from contatos order by nome";
			try {
				Connection con = conectar();
				PreparedStatement pst = con.prepareStatement(read);
				ResultSet rs = pst.executeQuery();
				while (rs.next()) {
					String idcon = rs.getString(1);
					String nome = rs.getString(2);
					String fone = rs.getString(3);
					String email = rs.getString(4);
					String idcpf = rs.getString(5);
					String senha = rs.getString(6);
					String idendereco = rs.getString(7);
					String estado = rs.getString(8);
					String bairro = rs.getString(9);
					String datacriacao = rs.getString(10);

					cliente.add(new Cliente(idcon, nome, fone, email, idcpf, senha,idendereco,datacriacao, estado, bairro));
				}
				con.close();
				return cliente;
			} catch (Exception e) {
				System.out.println(e);
				return null;
			}
		}

		public void selecionarCliente(Cliente cliente) {
			String read2 = "select * from contatos where idcon = ?";

			try {
				Connection con = conectar();
				PreparedStatement pst = con.prepareStatement(read2);
				pst.setString(1, cliente.getIdcon());
				ResultSet rs = pst.executeQuery();
				while (rs.next()) {
					cliente.setIdcon(rs.getString(1));
					cliente.setNome(rs.getString(2));
					cliente.setFone(rs.getString(3));
					cliente.setEmail(rs.getString(4));
					cliente.setIdcpf(rs.getString(5));
					cliente.setsenha(rs.getString(6));
					cliente.setidendereco(rs.getString(7));
					cliente.setestado(rs.getString(8));
					cliente.setbairro(rs.getString(9));
					cliente.setdatacriacao(rs.getString(10));

				}
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}

		// editar contato

		public void alterarCliente(Cliente cliente) {
			String create = "update contatos set nome=?,fone=?,email=?,idcpf=?,senha=?,idendereco=?,estado=?,bairro=? where idcon=?";

			try {
				Connection con = conectar();
				PreparedStatement pst = con.prepareStatement(create);
				pst.setString(1, cliente.getNome());
				pst.setString(2, cliente.getFone());
				pst.setString(3, cliente.getEmail());
				pst.setString(4, cliente.getIdcpf());
				pst.setString(5, cliente.getsenha());
				pst.setString(6, cliente.getidendereco());
				pst.setString(7, cliente.getestado());
				pst.setString(8, cliente.getbairro());
				pst.setString(9, cliente.getIdcon());

				pst.executeUpdate();
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}

		public void deletarCliente(Cliente cliente) {

			String delete = "delete from contatos where idcon=?";

			try {
				Connection con = conectar();
				PreparedStatement pst = con.prepareStatement(delete);
				pst.setString(1, cliente.getIdcon());
				pst.executeUpdate();
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}