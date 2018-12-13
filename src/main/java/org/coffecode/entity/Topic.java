package org.coffecode.entity;

import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "topic")
public class Topic {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;
    private Timestamp date;
    private String title;
    @Lob()
    private String content;

    @ManyToOne
    @JoinColumn(name = "users")
    private Users users;

    @OneToMany(mappedBy = "topic", fetch = FetchType.EAGER)
    @OrderBy("date ASC")
    private Set<Entry> entries;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Set<Entry> getEntries() {
        return entries;
    }

    public void setEntries(Set<Entry> entries) {
        this.entries = entries;
    }
}
