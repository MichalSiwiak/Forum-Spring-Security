package org.coffecode.dao;

import org.coffecode.entity.Topic;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TopicDAOImpl implements TopicDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Topic> getTopics() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<Topic> theQuery =
                currentSession.createQuery("SELECT t from Topic t",
                        Topic.class);

        // execute query and get result list
        List<Topic> topics = theQuery.getResultList();

        // return the results
        return topics;
    }

    @Override
    public Topic getTopic(int id) {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // now retrieve/read from database using the primary key
        Topic theTopic = currentSession.get(Topic.class, id);

        return theTopic;
    }

    @Override
    public void saveTopic(Topic theTopic) {

        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save/upate the customer ... finally LOL
        currentSession.saveOrUpdate(theTopic);

    }
}
