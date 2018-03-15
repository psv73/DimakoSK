package net.psv73.websait.controller;

import net.psv73.websait.Languages;
import net.psv73.websait.dao.ArticleDAO;
import net.psv73.websait.model.Article;
import net.psv73.websait.model.User;
import net.psv73.websait.util.Utils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(urlPatterns = {"/mcon/addArticle"})
public class AddArticleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Date date = new Date();

        if (req.getSession().getAttribute("article") != null) {
            req.getSession().removeAttribute("article");
        }

        if (req.getAttribute("article") != null) {
            Article article = (Article) req.getAttribute("article");
            date = article.getDate();
            req.removeAttribute("article");
        }

        req.setAttribute("date", date);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/mcon/addArticle.jsp");

        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String error = null;
        Date date = null;

        String name ="";
        String dateStr = req.getParameter("date");
        String text = req.getParameter("text");
        String lang = req.getParameter("lang");
        Languages language = null;

        try {
            language = Languages.valueOf(lang);
        } catch (Exception e) {
            error = "Choose language";
        }

       SimpleDateFormat formatter = new SimpleDateFormat(Utils.DATEFORMAT);

        try {
            date = formatter.parse(dateStr);
        } catch (Exception e) {
            error = e.getMessage();
        }

        Article article = new Article(text, language, name, date);
        article.setUser((User) req.getSession().getAttribute("loginedUser"));

        if (error == null) {
            error = ArticleDAO.addArticle(article);
        }

        req.setAttribute("error", error);
        req.setAttribute("article", article);

        if (error != null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/mcon/addArticle.jsp");
            dispatcher.forward(req, resp);
        } else {
            resp.sendRedirect(req.getContextPath() + "/mcon/articlesList");
        }
    }
}
