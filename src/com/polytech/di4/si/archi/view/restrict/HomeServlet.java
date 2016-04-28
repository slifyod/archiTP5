package com.polytech.di4.si.archi.view.restrict;

import com.polytech.di4.si.archi.model.Borrow;
import com.polytech.di4.si.archi.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by linux on 28/04/16.
 */
@WebServlet(name = "HomeServlet", urlPatterns = "/restrict/home")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("authenticated");
        List<Borrow> borrows = new ArrayList<>();
        //TODO get all borrow of the user


        request.setAttribute("borrows",borrows);
        this.getServletContext().getRequestDispatcher("/WEB-INF/restrict/home.jsp").forward(request, response);
    }
}
