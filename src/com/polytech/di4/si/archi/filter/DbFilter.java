package com.polytech.di4.si.archi.filter;

import com.polytech.di4.si.archi.Db;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by linux on 28/04/16.
 */
@WebFilter(filterName = "DbFilter", urlPatterns = "/*")
public class DbFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        try {

            Db.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
