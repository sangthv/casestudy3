package service;
import dao.CRUD_ProductDao;
import dao.LoginDao;
import model.Account;
import model.Product;

import java.util.List;

public class ProductService {
    public static List<Product> products = CRUD_ProductDao. GetAllProduct();
    static LoginDao loginDao =new LoginDao();
    public static List<Account> accounts = loginDao.showAcount();

    public static void add(Product product) {
        CRUD_ProductDao.addProduct(product);
        products = CRUD_ProductDao. GetAllProduct();
    }

    public static void editProduct( Product product) {
        CRUD_ProductDao.editProduct(product);
        products = CRUD_ProductDao. GetAllProduct();
    }

    public static void delete(int id) {
       CRUD_ProductDao.delete(id);
       products = CRUD_ProductDao.GetAllProduct();
    }

    public static void deleteAccount(int id) {
        loginDao.deleteAccount(id);
        accounts = loginDao.showAcount();
    }
}
