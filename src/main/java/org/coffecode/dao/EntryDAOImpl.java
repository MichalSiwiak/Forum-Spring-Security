package org.coffecode.dao;

import org.coffecode.entity.Entry;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EntryDAOImpl implements EntryDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void saveEntry(Entry entry) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save/upate the customer ... finally LOL
        currentSession.saveOrUpdate(entry);

    }
}
