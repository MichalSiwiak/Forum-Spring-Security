package net.coffeecoding.service;

import net.coffeecoding.dao.EntryDAO;
import net.coffeecoding.entity.Entry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class EntryServiceImpl implements EntryService {

    @Autowired
    private EntryDAO entryDAO;

    @Override
    @Transactional
    public void saveEntry(Entry entry) {
        entryDAO.saveEntry(entry);
    }
}
