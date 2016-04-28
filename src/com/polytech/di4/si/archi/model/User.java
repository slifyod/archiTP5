package com.polytech.di4.si.archi.model;

/**
 * Created by linux on 26/04/16.
 */
public class User {
    private long user_id;
    private String name;
    private String password;

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long id) {
        this.user_id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
