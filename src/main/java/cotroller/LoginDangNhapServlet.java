package cotroller;

import dao.LoginDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;


import java.io.IOException;

@WebServlet(urlPatterns = "/dangnhap")
public class LoginDangNhapServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        LoginDao LoginDAO = new LoginDao();
        Account account = LoginDAO.login(username, password);
        if (account == null) {
            req.setAttribute("mess", "bạn đã nhập sai tài khoản hoặc mật khẩu");
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
            }
        else {
            HttpSession session = req.getSession();
            session.setAttribute("acc",account);
//            session.setMaxInactiveInterval(600);
            resp.sendRedirect("/product");
        }
    }
}
