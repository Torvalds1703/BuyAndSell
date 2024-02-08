package com.example.buyandsell.repositories;

import com.example.buyandsell.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findProductByTitle(String title);
}
