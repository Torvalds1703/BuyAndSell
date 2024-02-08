package com.example.buyandsell.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
public class Product {
    private Long ID;
    private String title;
    private String description;
    private int price;
    private String city;
    private String author;
}
