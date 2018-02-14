package net.psv73.websait.controller;

import net.psv73.websait.dao.ArticleDAO;
import net.psv73.websait.model.Article;
import net.psv73.websait.util.Utils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/mcon/editArticle"})
public class editArticleServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String error = null;
        String id = req.getParameter("id");

        if (id != null && id.length() > 0) {
            Article article = ArticleDAO.getArticleByID(id);
            if (article != null) {
                req.getSession().setAttribute("article", article);
            } else {
                error =  "Article does not loaded";
            }
        }

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/mcon/editArticle.jsp");

        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Article article = Utils.getArticleFromReqest(req);
        String error = ArticleDAO.updateArticle(article);

        if (error != null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/mcon/editArticle.jsp");
            dispatcher.forward(req, resp);
        } else {
            if (req.getSession().getAttribute("article") != null) {
                req.getSession().removeAttribute("article");
            }
            resp.sendRedirect(req.getContextPath() + "/mcon/articlesList");
        }
    }
}
