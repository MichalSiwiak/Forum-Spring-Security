package net.coffeecoding.dao;

import net.coffeecoding.entity.Entry;

import java.util.List;

public interface EntryDAO {

    public void saveEntry(Entry entry);
    public List<Entry> getEntries();
    public void deleteEntry(Entry entry);

}
