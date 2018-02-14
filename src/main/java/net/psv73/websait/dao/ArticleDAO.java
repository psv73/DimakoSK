package net.psv73.websait.dao;

import net.psv73.websait.Languages;
import net.psv73.websait.model.Article;
import net.psv73.websait.util.HibernateUtils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.Query;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

public class ArticleDAO {

    public static List<Article> getAllArticles(Languages languages) {
        List<Article> articles = null;

        try (Session session = HibernateUtils.getSession()){
            session.beginTransaction();

            Query query = (Query) session.createQuery("from Article where language = :paramName");

            query.setParameter("paramName", languages);

            articles = query.getResultList();

            session.getTransaction().commit();
        } catch(Throwable ex) {
            ex.printStackTrace();
        }

        return articles;
    }

    public static List<Article> getArticles(HttpSession httpSession) {
        List<Article> articles = null;

        Date dateStart = (Date) httpSession.getAttribute("dateStart");
        Date dateEnd = (Date) httpSession.getAttribute("dateEnd");
        Languages language = (Languages) httpSession.getAttribute("lang");

        try (Session session = HibernateUtils.getSession()){
            session.beginTransaction();

            org.hibernate.Query query = session.createQuery("from Article where language = :language and " +
                    "date between :dateStart and :dateEnd");

            query.setParameter("language", language);
            query.setParameter("dateStart", dateStart);
            query.setParameter("dateEnd", dateEnd);

            articles = query.list();

            session.getTransaction().commit();
        } catch(Throwable ex) {
            ex.printStackTrace();
        }

        return articles;
    }

    public static Article getArticleByID(String idStr) {
        Article article = null;

        long id = 0;

        try {
            id = Long.parseLong(idStr);
        } catch(Exception e) {
            e.printStackTrace();
        }

        try (Session session = HibernateUtils.getSession()){
            session.beginTransaction();

            article = session.get(Article.class,id);

            session.getTransaction().commit();
        } catch(Throwable ex) {
            ex.printStackTrace();
        }

        return article;
    }

    public static String addArticle(Article article) {
        String error = null;

        Session session = HibernateUtils.getSession();

        Transaction tx = null;

        try {
            tx = session.beginTransaction();
            session.save(article);
            tx.commit();
        } catch (HibernateException he) {
            if (tx != null) tx.rollback();
            error = he.getMessage();
            he.printStackTrace();
        } finally {
            session.close();
        }

        return error;
    }

    public static void deleteArticle(String  article) {

    }

    public static String updateArticle(Article article) {
        String error = null;

        Session session = HibernateUtils.getSession();

        Transaction tx = null;

        try {
            tx = session.beginTransaction();
            session.update(article);
            tx.commit();
        } catch (HibernateException he) {
            if (tx != null) tx.rollback();
            error = he.getMessage();
            he.printStackTrace();
        } finally {
            session.close();
        }

        return error;
    }
}
