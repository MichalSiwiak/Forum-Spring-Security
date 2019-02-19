package net.coffeecoding.service;

import net.coffeecoding.entity.Topic;

import java.util.List;

public interface TopicService {

    public List<Topic> getTopics();

    public Topic getTopic(int id);
    public void deleteTopic(Topic topic);
    public void saveTopic(Topic theTopic);
}
