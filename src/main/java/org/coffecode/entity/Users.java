package org.coffecode.entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Set;

@Entity
@Table(name = "users")
public class Users {

    @Id
    private String username;
    private String password;
    private boolean enabled;
    private Timestamp date;

    @OneToMany(mappedBy = "users", fetch = FetchType.EAGER)
    private Set<Topic> topics;
    @OneToMany(mappedBy = "users", fetch = FetchType.EAGER)
    private Set<Entry> entries;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public Set<Topic> getTopics() {
        return topics;
    }

    public void setTopics(Set<Topic> topics) {
        this.topics = topics;
    }

    public Set<Entry> getEntries() {
        return entries;
    }

    public void setEntries(Set<Entry> entries) {
        this.entries = entries;
    }

    @Override
    public String toString() {
        return "Users{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", enabled=" + enabled +
                ", date=" + date +
                ", topics=" + topics +
                ", entries=" + entries +
                '}';
    }
}

