package com.polytech.di4.si.archi.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by linux on 26/04/16.
 */
public class Author {
    private long author_id;
    private String name;
    private Set<Book> books= new HashSet<Book>(0);

    public long getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(long id) {
        this.author_id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean hasMaxNumberOfBooks()
    {


        return false;
    }
}
