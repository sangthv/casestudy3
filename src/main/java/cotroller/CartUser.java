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
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/giohang")
public class CartUser extends HttpServlet {
    List<Product> listCart;

    @Override
    public void init() throws ServletException {
        listCart = new ArrayList<>();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String action = req.getParameter("action");

        if (action == null) {
            action = "";
        }
        if ("delete".equals(action)) {
            for (int i = 0; i < listCart.size(); i++) {
                if (listCart.get(i).getId() == id) {
                    listCart.remove(i);
                }
            }
        } else {
            Product product = CRUD_ProductDao.findid(id);
            if (product != null) {
                listCart.add(product);
            }
        }
        req.setAttribute("cart", listCart);
        req.setAttribute("total", getTotal());
        RequestDispatcher dispatcher = req.getRequestDispatcher("/cartUser.jsp");
        dispatcher.forward(req, resp);
    }

    public double getTotal() {
        double sum = 0;
        for (Product p : listCart) {
            sum += p.getPrice();
        }
        return sum;
    }
}
