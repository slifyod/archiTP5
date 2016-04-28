package com.polytech.di4.si.archi.view;

import com.polytech.di4.si.archi.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by linux on 26/04/16.
 */
@WebServlet(name = "IndexServlet", urlPatterns = "/")
public class IndexServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> books = new ArrayList<>();
        req.setAttribute("books",books);
        this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(req, resp);
    }
}
