package mybeans;

import java.sql.*;
import java.util.ArrayList;

public class MovieBean {

    private Connection conn;

    public MovieBean() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/CSD430",
            "student1",
            "pass"
        );
    }

    public ArrayList<Integer> getMovieIds() throws SQLException {
        ArrayList<Integer> ids = new ArrayList<>();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT movie_id FROM kyle_movies_data");

        while (rs.next()) {
            ids.add(rs.getInt("movie_id"));
        }
        return ids;
    }

    public ResultSet getMovieById(int id) throws SQLException {
        PreparedStatement ps = conn.prepareStatement(
            "SELECT * FROM kyle_movies_data WHERE movie_id = ?"
        );
        ps.setInt(1, id);
        return ps.executeQuery();
    }
}
