package net.coffeecoding.dao;

import net.coffeecoding.entity.Entry;
import net.coffeecoding.entity.Topic;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    @Override
    public List<Entry> getEntries() {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<Entry> theQuery =
                currentSession.createQuery("SELECT e from Entry e",
                        Entry.class);

        // execute query and get result list
        List<Entry> entries = theQuery.getResultList();

        // return the results
        return entries;
    }

    @Override
    public void deleteEntry(Entry entry) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.delete(entry);
    }
}
