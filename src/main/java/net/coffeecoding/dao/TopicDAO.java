package net.coffeecoding.dao;

import net.coffeecoding.entity.Entry;
import net.coffeecoding.entity.Topic;

import java.util.List;

public interface TopicDAO {

    public List<Topic> getTopics();
    public Topic getTopic(int id);
    public void deleteTopic(Topic topic);
    public void saveTopic(Topic theTopic);
}
