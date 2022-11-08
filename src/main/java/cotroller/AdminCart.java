package cotroller;

import dao.CRUD_ProductDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/AdminCart")
public class AdminCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CRUD_ProductDao productDao = new CRUD_ProductDao();
        List<Product> list = productDao.GetAllProduct();
        req.setAttribute("spadmin", list );

        RequestDispatcher dispatcher = req.getRequestDispatcher("/adminCart.jsp");
        dispatcher.forward(req, resp);
    }
}
