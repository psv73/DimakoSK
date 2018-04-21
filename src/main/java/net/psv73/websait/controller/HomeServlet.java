package net.psv73.websait.controller;

import net.psv73.websait.Languages;
import net.psv73.websait.dao.ArticleDAO;
import net.psv73.websait.util.Utils;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * https://www.youtube.com/watch?v=t4FCGetKvgE&t=14
 */
public class HomeServlet extends HttpServlet {

    private String defaultPage = "";

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

        if (!pageName.equals("/contacts") &&
                !pageName.equals("/documents")) {
            List articles = ArticleDAO.getAllArticles(Languages.valueOf(Utils.getCurrentLanguage().toUpperCase()));
            request.setAttribute("articles", articles);
        }

        request.getRequestDispatcher(applet).forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
