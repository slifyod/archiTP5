package com.polytech.di4.si.archi.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by linux on 26/04/16.
 */
public class Book {
    private long book_id;
    private String name;

    private Set<Type> types= new HashSet<Type>(0);
    private Set<Author> authors= new HashSet<Author>(0);

    public long getBook_id() {
        return book_id;
    }

    public void setBook_id(long id) {
        this.book_id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Author> getAuthors() {
        return authors;
    }

    public void setAuthors(Set<Author> authors) {
        this.authors = authors;
    }

    public Set<Type> getTypes() {
        return types;
    }

    public void setTypes(Set<Type> types) {
        this.types = types;
    }

}
