package org.coffecode.entity;

import java.sql.Timestamp;

import javax.persistence.*;

@Entity
@Table(name = "entry")
public class Entry {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;
    private Timestamp date;
    @Lob()
    private String content;

    @ManyToOne
    @JoinColumn(name = "users")
    private Users users;

    @ManyToOne
    @JoinColumn(name = "topic")
    private Topic topic;

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

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }
}
