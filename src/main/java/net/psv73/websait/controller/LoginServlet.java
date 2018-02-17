package net.psv73.websait.controller;

import net.psv73.websait.dao.UserDAO;
import net.psv73.websait.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/mcon/login"})
public class LoginServlet extends HttpServlet {

    public LoginServlet() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/mcon/login.jsp");

        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userName = req.getParameter("name");
        String password = req.getParameter("password");

        User user = UserDAO.getUserByLoginPass(userName, password);

        if (user == null) {
            String error = "Invalid username or password";
            req.setAttribute("error", error);

            RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/mcon/login.jsp");
            dispatcher.forward(req, resp);

            return;
        }

        req.getSession().setAttribute("loginedUser", user);

        resp.sendRedirect(req.getContextPath() + "/mcon");
    }
}
