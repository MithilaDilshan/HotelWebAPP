package com.hotelapp.util;
import java.sql.*;
import com.hotelapp.model.managerlogin;

public class DBmanagerlogin {
	public boolean validate(managerlogin loginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName(constantForManager.DB_DRIVER);
        
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/hoteldb?useSSL=false", constantForManager.USER, constantForManager.PASSWORD);

                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection
                .prepareStatement("select * from user where username = ? and password = ? ")) {
                preparedStatement.setString(1, loginBean.getUserName());
                preparedStatement.setString(2, loginBean.getPassword());

                System.out.println(preparedStatement);
                ResultSet rs = preparedStatement.executeQuery();
                status = rs.next();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
            return status;
        }

        private void printSQLException(SQLException ex) {
            for (Throwable e: ex) {
                if (e instanceof SQLException) {
                    e.printStackTrace(System.err);
                    System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                    System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                    System.err.println("Message: " + e.getMessage());
                    Throwable t = ex.getCause();
                    while (t != null) {
                        System.out.println("Cause: " + t);
                        t = t.getCause();
                    }
                }
            }
        }
    }

