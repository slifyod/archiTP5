package com.polytech.di4.si.archi.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by linux on 26/04/16.
 */
public class Type {
    private long type_id;
    private String name;
    private Set<Book> books= new HashSet<Book>(0);

    public long getType_id() {
        return type_id;
    }

    public void setType_id(long id) {
        this.type_id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Book> getBooks() {
        return books;
    }

    public void setBooks(Set<Book> books) {
        this.books = books;
    }
}
