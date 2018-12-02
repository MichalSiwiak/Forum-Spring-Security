package pl.javacoding.dao;

import pl.javacoding.entity.Topic;

import java.util.List;

public interface TopicDAO {

    public List<Topic> getTopics();

    public Topic getTopic(int id);

    public void saveTopic(Topic theTopic);
}
