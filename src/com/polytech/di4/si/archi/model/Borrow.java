package com.polytech.di4.si.archi.model;

import java.util.Date;

/**
 * Created by linux on 26/04/16.
 */
public class Borrow {
    private long borrow_id;
    private User user;
    private Book book;
    private Date deadline;

    public long getBorrow_id() {
        return borrow_id;
    }

    public void setBorrow_id(long id) {
        this.borrow_id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }
}
