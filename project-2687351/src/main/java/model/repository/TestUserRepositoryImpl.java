package model.repository;

import model.beans.User;
import java.sql.SQLException;

public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository<User> repository =  new UseRepositoryImpl();
        System.out.println("=========== SaveObj insert ============");//Insert
        User userInsert = new User();
        userInsert.setUser_firstname("Mariana");
        userInsert.setUser_lastname("Hernandez");
        userInsert.setUser_email("hernadnezjessika777@gmail.com");
        userInsert.setUser_password("105MoradoMariana");

        repository.saveObj(userInsert);
        userInsert.setUser_firstname("Jessika");
        userInsert.setUser_lastname("Chamucero");
        userInsert.setUser_email("chamuceritajessi777@gmail.com");
        userInsert.setUser_password("26698420Morado");
        repository.saveObj(userInsert);

        System.out.println("=========== listAllObj ============");//Insert
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("======= byIdObj =======");
        System.out.println(repository.byIdObj(1));
        System.out.println();


        System.out.println("=========== saveObj ============");//Update
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("Jessi");
        userUpdate.setUser_lastname("Hernadez");
        userUpdate.setUser_email("JesiHernandes888@soy.sena.com");
        userUpdate.setUser_password("861485Kbaska");
        repository.saveObj(userInsert);
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("============= deleteObj ==============");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);

    }
}
