<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
  
   	Connection conn;
    Statement statement;
    ResultSet resultSet;
    public void jspInit(){
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
        	conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb","logaadeep","Sek@ran084");
        	statement = conn.createStatement();
        	resultSet = statement.executeQuery("Select * from account;");
    	}catch(SQLException e){
    		System.out.print("SQL exception");
    	}catch(ClassNotFoundException ec){
    		System.out.print("Class not found");
    	}
    }
    
    public void jsDestroy() throws SQLException{
    	statement.close();
		conn.close();
    	
    }
    
  
    
    
    
 <table>
 	<tr>
 		<th> ID </th>
 		<th> FirstName</th>
 		<th> LastName </th>
  		<th> email id </th>
 	</tr>
 	 		
 	
 		
 		 	 		

 </table>
    
    
    
    