package net.psv73.websait.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Access(AccessType.PROPERTY)
public class Article implements Serializable {

    @Access(AccessType.FIELD)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String text;

    @Column(length = 3)
    private String language;

    private String name;

    public Article() {}

    public Article(String text, String language, String name) {
        this.language = language;
        this.text = text;
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", language='" + language + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
