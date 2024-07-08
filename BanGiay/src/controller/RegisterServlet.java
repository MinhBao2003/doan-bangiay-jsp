package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDao;
import model.User;
@WebServlet({"/RegisterServlet","/Register.html"})
public class RegisterServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    private UserDao userDao;
    
    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        int isadmin = 0;
        
        User user = new User(username, name, email, phone, address, password, isadmin);
        userDao.addUser(user);
        
        response.sendRedirect("/CakeBakery/index.html");
    }
}