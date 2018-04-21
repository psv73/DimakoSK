package net.psv73.websait.model;

import net.psv73.websait.util.Utils;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "user",
        indexes = {@Index(name = "name", columnList = "name"),
                    @Index(name = "password", columnList = "password")})
public class User implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id", unique = true, nullable = false)
    private Long id;

    @Column(length = 32)
    private String name;

    @Column(length = 32)
    private String password;

    private UUID uuid;

    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "User_Role",
            joinColumns = { @JoinColumn(name = "user_id") },
            inverseJoinColumns = { @JoinColumn(name = "role_id") }
    )
    private Set<Role> roles = new HashSet<>();

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private Set<Article> articles = new HashSet<>();

    public User() {
        this.setUUID(UUID.randomUUID());
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = Utils.valdateData(name);
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UUID getUUID() {
        return uuid;
    }

    private void setUUID(UUID uuid) {
        this.uuid = uuid;
    }

    public Set<Article> getArticles() {
        return articles;
    }

    public void setArticles(Set<Article> articles) {
        this.articles = articles;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

}
