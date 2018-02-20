package net.psv73.websait.model;

import net.psv73.websait.Languages;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

@Entity
@Access(AccessType.PROPERTY)
public class Article implements Serializable {

    @Access(AccessType.FIELD)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;

    @Column(length = 1024)
    private String text;

    @Column(length = 3)
    private Languages language;

    private String name;

    @Temporal(TemporalType.DATE)
    @Column(name = "date", nullable = false)
    private Date date;


    public Article() {
        this.created = Calendar.getInstance().getTime();
    }

    public Article(String text, Languages language, String name, Date date) {
        this.text = text;
        this.language = language;
        this.name = name;
        this.date = date;
        this.created = Calendar.getInstance().getTime();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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

    public Languages getLanguage() {
        return language;
    }

    public void setLanguage(Languages language) {
        this.language = language;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
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
