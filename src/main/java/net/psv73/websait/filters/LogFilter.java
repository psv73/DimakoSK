package net.psv73.websait.filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Date;

public class LogFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;

        System.out.println("#INFO " + (new Date()) + " - ServletPath : " + req.getServletPath() +
                ", URL = " + ((HttpServletRequest) request).getRequestURL());

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
