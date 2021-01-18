package pl.coderslab.dao;

import org.springframework.stereotype.Component;
import pl.coderslab.model.Product;

import java.util.ArrayList;
import java.util.List;

@Component
public class ProductDao {
    public List<Product> getList() {
        List<Product> products = new ArrayList<>();
        products.add(new Product(1L ,"jabłko", 10.0));
        products.add(new Product(2L ,"gruszka", 15.0));
        products.add(new Product(3L ,"pomarańcz", 20.0));
        return products;
    }
}