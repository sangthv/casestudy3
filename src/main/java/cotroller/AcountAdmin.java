package cotroller;

import dao.CRUD_ProductDao;
import dao.LoginDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;
import model.Product;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/admin")
public class AcountAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CRUD_ProductDao productDao = new CRUD_ProductDao();
        LoginDao loginDao = new LoginDao();
        List<Account> listAcount = loginDao.showAcount();
        req.setAttribute("account", listAcount );

        RequestDispatcher dispatcher = req.getRequestDispatcher("/account.jsp");
        dispatcher.forward(req, resp);
    }
}
