package net.psv73.websait.util;

import net.psv73.websait.Languages;
import net.psv73.websait.model.Article;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ValidatorFactory;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import static net.psv73.websait.Languages.*;

public class Utils {

    /**
     * current localization
     */
    private static String currentLanguage = "ru";
    public static final String DATEFORMAT = "yyyy-MM-dd";

    /**
     * Add parameter lang fom GET request to cookie parameter
     *
     * @param response
     * @param language
     * @return
     */

    public static void setLanguageFromParam(HttpServletResponse response, String language) {
        /**
         * Check that language is correct
         * must be equal one of elements of enum Languages
         *
         * check & set
         */
        setCurrentLanguage(language);

        Cookie cookie = new Cookie("lang", currentLanguage);
        response.addCookie(cookie);
    }

    public static void setLanguageFromCookie(Cookie[] cookies) {

        if (cookies == null) return;

        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("lang")) {
                setCurrentLanguage(cookie.getValue().toLowerCase());
            }
        }
    }

    public static String getCurrentLanguage() {
        return currentLanguage;
    }

    public static void setCurrentLanguage(String currentLanguage) {

        for (Languages l : values()) {
            if (l.name().equals(currentLanguage.toUpperCase())) {
                Utils.currentLanguage = currentLanguage.toLowerCase();
            }
        }
    }

    /**
     * get key value from resourcesBondle
     *
     * @param key
     * @return
     */
    public static String getRecourceBundleValue(String key) {
        /**
         * switch language to current
         */
        Locale defaultLanguage = new Locale(Utils.getCurrentLanguage());
        Locale.setDefault(defaultLanguage);

        ResourceBundle resourceBundle = ResourceBundle.getBundle("Locale");

        String value = resourceBundle.getString(key);

        return value;
    }

    public static String getIDcode() {
        Random rd = new Random();
        int codeLength = 16;
        String codingString = "0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM";
        StringBuilder code = new StringBuilder();

        for (int i = 0; i < codeLength; i++) {
            code.append(codingString.charAt(rd.nextInt(codingString.length())));
        }

        return code.toString();
    }

    public static Date getDefaultDateStart() {
        Calendar cal = Calendar.getInstance();
        Date today = cal.getTime();
        cal.add(Calendar.MONTH, -1); // to get previous year add -1
        Date date = cal.getTime();
        return date;
    }

    public static Article getArticleFromReqest(HttpServletRequest request) {

        String error = null;
        Date date = null;
        Article article = (Article) request.getSession().getAttribute("article");

        String name = "";
        String dateStr = request.getParameter("date");
        String text = request.getParameter("text");
        String lang = request.getParameter("lang");
        String idStr = request.getParameter("id");
        Long id = null;
        Languages language = null;

        try {
            language = valueOf(lang);
        } catch (Exception e) {
            error = "Choose language";
        }

        SimpleDateFormat formatter = new SimpleDateFormat(DATEFORMAT);

        try {
            date = formatter.parse(dateStr);
        } catch (Exception e) {
            error = e.getMessage();
        }

        if (date == null) {
            error = "Input currect date";
        }

        if (idStr != null) {
            try {
                id = Long.parseLong(idStr);
            } catch (Exception e) {
                error = e.getMessage();
            }
        }

        if (article != null) {
            article.setDate(date);
            article.setLanguage(language);
            article.setText(text);
        }

        return article;
    }

    public static String getDatePattern() {
        DateFormat formatter = DateFormat.getDateInstance(DateFormat.MEDIUM, Locale.forLanguageTag(getCurrentLanguage()));
        String pattern       = ((SimpleDateFormat)formatter).toPattern();
        String localPattern  = ((SimpleDateFormat)formatter).toLocalizedPattern();

        return pattern;
    }

    public static String valdateData(String text) {
        String clearText;

        clearText = text == null ? "" : text.replaceAll("<","&lt;")
                .replaceAll(">","&gt;")
                .replaceAll("\"","&quot;")
                .replaceAll("'","&apos;");

        return clearText;
    }
}
