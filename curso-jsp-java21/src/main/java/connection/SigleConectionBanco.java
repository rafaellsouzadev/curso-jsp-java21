package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SigleConectionBanco {
	
	private static final String url = "jdbc:postgresql://localhost:5432/curso_jsp?autoReconect=true";
	private static final String user = "postgres";
	private static final String senha = "";
	private static Connection connection = null;
	
	
	public static Connection getConnection() {
		return connection;
	}
	
	static {
		conectar();
	}
	
	public SigleConectionBanco() { /*Quando tiver uma instancia vai conectar*/
		conectar();
	}
	
	private static void conectar() {
		
		try {
			
			if (connection == null) {
				Class.forName("org.postgresql.Driver"); /*Carrega o Driver de conexão com o Banco*/
				connection = DriverManager.getConnection(url, user, senha);
				connection.setAutoCommit(false); /*para nao egetuar alteracoes no banco sem o nosso comando*/
				
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace(); /*mostra qualquer erro no momento de conectar*/
		}
	}

}
