package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import dao.UserDao;

public class UserController {
    private UserDao userDao;

    public UserController() {
        userDao = new UserDao();
    }

    public String register(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        int isadmin = 0; // set default role to user

        User user = new User(username, name, email, phone, address, password, isadmin);

        userDao.addUser(user);

        return "login.jsp";
    }
}