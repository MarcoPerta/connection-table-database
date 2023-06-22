package connectorDB;

import java.sql.*;

public class ConnectionTable {

	    public static ResultSet getTableData() throws SQLException, ClassNotFoundException {
	    	
	        // Carica il driver JDBC
	        Class.forName("com.mysql.cj.jdbc.Driver");

	        // Crea la connessione al database
	        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/persone", "root", "xxxx");

	        // Crea la query SQL per recuperare i dati dalla tabella
	        String query = "SELECT * FROM new_table";

	        // Esegui la query
	        Statement statement = connection.createStatement();
	        ResultSet resultSet = statement.executeQuery(query);

	        // Restituisci il risultato della query
	        return resultSet;
	    }
}
