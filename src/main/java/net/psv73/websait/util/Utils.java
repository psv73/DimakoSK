package net.psv73.websait.util;

import net.psv73.websait.Languages;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;
import java.util.ResourceBundle;

public class Utils {

    /**
     * current localization
     */
    private static String currentLanguage = "ru";

    /**
     * Add parameter lang fom GET request to cookie parameter
     * @param response
     * @param language
     * @return
     */

    public static HttpServletResponse setLanguageFromParam(HttpServletResponse response, String language) {
        /**
         * Check that language is correct
         * must be equal one of elements of enum Languages
         *
         * check & set
         */
        setCurrentLanguage(language);

        Cookie cookie = new Cookie("lang", currentLanguage);
        response.addCookie(cookie);

        return response;
    }

    public static void setLanguageFromCookie(Cookie [] cookies) {

        if (cookies == null) return;

        for (Cookie cookie: cookies) {
            if (cookie.getName().equals("lang")) {
                setCurrentLanguage(cookie.getValue().toLowerCase());
            }
        }
    }

    public static String getCurrentLanguage() {
        return currentLanguage;
    }

    public static void setCurrentLanguage(String currentLanguage) {

        for (Languages l: Languages.values()) {
            if (l.name().equals(currentLanguage.toUpperCase())) {
                Utils.currentLanguage = currentLanguage.toLowerCase();
            }
        }
    }

    /**
     * get key value from resourcesBondle
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
}
