package pl.javacoding.service;

import pl.javacoding.dao.TopicDAO;
import pl.javacoding.entity.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TopicServiceImpl implements TopicService {

    // need to inject customer dao
    @Autowired
    private TopicDAO topicDAO;


    @Override
    @Transactional
    public List<Topic> getTopics() {
        return topicDAO.getTopics();
    }

    @Override
    @Transactional
    public Topic getTopic(int id) {
        return topicDAO.getTopic(id);
    }

    @Override
    @Transactional
    public void saveTopic(Topic theTopic) {
        topicDAO.saveTopic(theTopic);
    }
}





