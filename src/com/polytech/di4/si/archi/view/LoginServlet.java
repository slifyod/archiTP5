package com.polytech.di4.si.archi.view;

import com.polytech.di4.si.archi.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by linux on 26/04/16.
 */
@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        String login = req.getParameter("login");
        String password = req.getParameter("password");

        //TODO test if combination of login and pass is right
        if (login.equals("login") && password.equals("password")) {
            User user = new User();
            //TODO store the user in the var user
                session.setAttribute("authenticated", user);
            resp.sendRedirect(getServletContext().getContextPath()+"/restrict/home");
        }
        else {
            session.setAttribute("authenticated", null);
            resp.sendRedirect(getServletContext().getContextPath()+"/login");
        }
    }

}
