package cotroller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import service.ProductService;

import java.io.IOException;

@WebServlet(urlPatterns = "/sua")
public class EditProduct extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String image = req.getParameter("image");
        double price = Double.parseDouble(req.getParameter("price"));
        int amount = Integer.parseInt(req.getParameter("amount"));

        ProductService.editProduct(new Product(id, name,image,price,amount));
        resp.sendRedirect("/AdminCart");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));
        for (Product pr: ProductService.products) {
            if (pr.getId() == id){
                req.setAttribute("pro", pr);
            }
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("/adminEditCart.jsp");
        dispatcher.forward(req,resp);
    }
}
