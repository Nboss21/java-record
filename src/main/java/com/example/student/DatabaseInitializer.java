package com.example.student;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;

public class DatabaseInitializer {
    public static void main(String[] args) {
        String createTableSQL = "CREATE TABLE IF NOT EXISTS students (" +
                "id SERIAL PRIMARY KEY, " +
                "name VARCHAR(100) NOT NULL, " +
                "email VARCHAR(100) NOT NULL UNIQUE, " +
                "year INT NOT NULL" +
                ");";

        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement()) {
            stmt.execute(createTableSQL);
            System.out.println("Database schema initialized successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
            System.exit(1);
        }
    }
}
