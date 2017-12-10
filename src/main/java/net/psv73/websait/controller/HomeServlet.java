package net.psv73.websait.controller;

import net.psv73.websait.util.Utils;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * https://www.youtube.com/watch?v=t4FCGetKvgE&t=14
 */
public class HomeServlet extends HttpServlet {

    public String defaultPage = "";

    public HomeServlet() {
        super();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        this.defaultPage = config.getInitParameter("defaultPage");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String webPath = request.getServletPath();

        String pageName = (webPath.equals("/") || webPath.isEmpty()) ? defaultPage : webPath;
        String applet = "/WEB-INF/view" + pageName + ".jsp";

        request.setAttribute("pageName", pageName);
        request.setAttribute("applet", applet);
        request.setAttribute("defaultPage", defaultPage);

        if (request.getParameter("lang") != null && !Utils.getCurrentLanguage().equals(request.getParameter("lang"))) {
            response = Utils.setLanguageFromParam(response, request.getParameter("lang"));
        } else {
            Utils.setLanguageFromCookie(request.getCookies());
        }

/*        if (!webPath.equals(pageName)) {
            response.sendRedirect(pageName);
            return;
        }*/
        request.getRequestDispatcher(applet).forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
