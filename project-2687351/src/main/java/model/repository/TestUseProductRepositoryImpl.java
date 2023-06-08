package model.repository;

import model.beans.Product;

import java.sql.SQLException;


public class TestUseProductRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository<Product> product =  new ProductRepositoryImpl();
        System.out.println("=========== SaveObj insert ============");//Insert
        Product productInsert = new Product();
        productInsert.setProduct_name("Baño de gato");
        productInsert.setProduct_value(8000);
        productInsert.setFk_category_id(1);
        product.saveObj(productInsert);

        System.out.println("=========== listAllObj ============");//Insert
        product.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("======= byIdObj =======");
        System.out.println(product.byIdObj(1));
        System.out.println();
    }

}
