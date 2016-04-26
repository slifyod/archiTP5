package com.polytech.di4.si.archi.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by linux on 26/04/16.
 */
@WebFilter(urlPatterns = "/restrict/*",filterName = "AuthenticationFilter")
public class AuthenticationFilter implements Filter {
    private ServletContext servletContext;

    public void init(FilterConfig config) throws ServletException {
        servletContext = config.getServletContext();
    }

    public void doFilter(ServletRequest req, ServletResponse resp, javax.servlet.FilterChain chain) throws ServletException, IOException {
        chain.doFilter(req, resp);
    }

    public void destroy() {

    }

}
