package pl.javacoding.service;

import pl.javacoding.entity.Topic;

import java.util.List;

public interface TopicService {

    public List<Topic> getTopics();

    public Topic getTopic(int id);

    public void saveTopic(Topic theTopic);
}
