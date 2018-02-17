package net.psv73.websait.util;

import net.psv73.websait.model.Article;
import net.psv73.websait.model.Role;
import net.psv73.websait.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {

    public static final SessionFactory sessionFactory;

    static {
        try {
            sessionFactory = new Configuration()
                    .addAnnotatedClass(Article.class)
                    .addAnnotatedClass(User.class)
                    .addAnnotatedClass(Role.class)
                    .buildSessionFactory();
        } catch (Throwable e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static Session getSession() {
        return sessionFactory.openSession();
    }

}
