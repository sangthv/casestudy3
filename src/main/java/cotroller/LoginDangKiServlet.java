package cotroller;

import dao.LoginDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;

import java.io.IOException;

@WebServlet(urlPatterns = "/dangki")
public class LoginDangKiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmpass = req.getParameter("confirmPassword");

        if (!password.equals(confirmpass)){
            resp.sendRedirect("/login.jsp");
        }else {
            LoginDao loginDao = new LoginDao();
            Account account = loginDao.checkAccountExist(username);
            if (account == null){
                loginDao.dangKi(email,username,password);
                resp.sendRedirect("/product");
            }else {
                resp.sendRedirect("/login.jsp");
            }
        }
//  ----------------đăng kí---------------------

    }
}
