/*
 * Author: Kyle Klausen
 * Dated: 01/29/26
 * Assignment: Module 4.2
 * Description: Created a movie chart that includes all necessary information. Added Director and Rating.
 */

package mybeans;

import java.io.Serializable;

public class MovieBean implements Serializable {
    private String title;
    private String year;
    private String genre;
    private String director;
    private double rating;

    public MovieBean() {}

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getYear() { return year; }
    public void setYear(String year) { this.year = year; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public String getDirector() { return director; }
    public void setDirector(String director) { this.director = director; }

    public double getRating() { return rating; }
    public void setRating(double rating) { this.rating = rating; }
}
