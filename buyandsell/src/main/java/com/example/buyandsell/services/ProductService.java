package com.example.buyandsell.services;

import com.example.buyandsell.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID,"PlayStation 5", "Simple description", 67000, "Tomsk", "Tom Holand"));
        products.add(new Product(++ID, "Iphone 10", "Simple description", 28000, "Moscow", "Tom Holand"));

    }

    public List<Product> listProducts() { return products; }

    public void saveProduct(Product product) {
        product.setID(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id){
        products.removeIf(product -> product.getID().equals(id));
    }

    public Product getProductById(Long id) {
        for(Product product : products){
            if (product.getID().equals(id)) return product;
        }
        return null;
    }
}
