package net.coffeecoding.service;

import net.coffeecoding.entity.Entry;
import net.coffeecoding.entity.Topic;

import java.util.List;

public interface EntryService {

    public void saveEntry(Entry entry);
    public List<Entry> getEntries();
    public void deleteEntry(Entry entry);

}
