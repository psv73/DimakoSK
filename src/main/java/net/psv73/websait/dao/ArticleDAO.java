package net.psv73.websait.dao;

import net.psv73.websait.Languages;
import net.psv73.websait.model.Article;
import net.psv73.websait.util.HibernateUtils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

public class ArticleDAO {

    public static List getAllArticles(Languages language) {
        String error = null;
        List articles = null;

        Transaction tx = null;

        try (Session session = HibernateUtils.getSession()) {
            tx = session.beginTransaction();

            org.hibernate.Query query = session.createQuery("from Article where language = :language" +
                    " order by date desc");

            query.setParameter("language", language);

            articles = query.list();

            tx.commit();
        } catch (HibernateException he) {
            if (tx != null) tx.rollback();
            error = he.getMessage();
//            throw he;
        }

        return articles;
    }

    public static List getArticles(HttpSession httpSession) {
        String error = null;
        List articles = null;

        Date dateStart = (Date) httpSession.getAttribute("dateStart");
        Date dateEnd = (Date) httpSession.getAttribute("dateEnd");
        Languages language = (Languages) httpSession.getAttribute("articleLang");

        Transaction tx = null;

        try (Session session = HibernateUtils.getSession()) {
            tx = session.beginTransaction();

            org.hibernate.Query query = session.createQuery("from Article where language = :language and " +
                    "date between :dateStart and :dateEnd order by date desc");

            query.setParameter("language", language);
            query.setParameter("dateStart", dateStart);
            query.setParameter("dateEnd", dateEnd);

            articles = query.list();

            tx.commit();
        } catch (HibernateException he) {
            if (tx != null) tx.rollback();
            error = he.getMessage();
            he.printStackTrace();
        }

        httpSession.setAttribute("error", error);
        return articles;
    }

    public static Article getArticleByID(String idStr) {
        String error = null;
        Article article = null;

        long id = 0;

        try {
            id = Long.parseLong(idStr);
        } catch (Exception e) {
            e.printStackTrace();
        }

        Transaction tx = null;

        try (Session session = HibernateUtils.getSession()) {
            tx = session.beginTransaction();

            article = session.get(Article.class, id);

            tx.commit();
        } catch (HibernateException he) {
            if (tx != null) tx.rollback();
            error = he.getMessage();
            he.printStackTrace();
        }

        return article;
    }

    public static String addArticle(Article article) {
        String error = null;

        Transaction tx = null;

        try (Session session = HibernateUtils.getSession()) {
            tx = session.beginTransaction();

            session.save(article);

            tx.commit();
        } catch (HibernateException he) {
            if (tx != null) tx.rollback();
            error = he.getMessage();
            he.printStackTrace();
        }

        return error;
    }

    public static String deleteArticle(String article) {
        String error = null;

        Article art = ArticleDAO.getArticleByID(article);
        if (art == null) {
            error = "Article not found";
            return error;
        }

        Transaction tx = null;

        try (Session session = HibernateUtils.getSession()) {
            tx = session.beginTransaction();
            session.delete(art);
            tx.commit();
        } catch (HibernateException he) {
            if (tx != null) tx.rollback();
            error = he.getMessage();
            he.printStackTrace();
        }

        return error;
    }

    public static String updateArticle(Article article) {
        String error = null;

        Transaction tx = null;

        try (Session session = HibernateUtils.getSession()) {
            tx = session.beginTransaction();
            session.update(article);
            tx.commit();
        } catch (HibernateException he) {
            if (tx != null) tx.rollback();
            error = he.getMessage();
            he.printStackTrace();
        }

        return error;
    }
}
