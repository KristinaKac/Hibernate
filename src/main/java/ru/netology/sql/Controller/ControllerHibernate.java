package ru.netology.sql.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.sql.Repository.Repo;

import java.util.List;

@RestController
public class ControllerHibernate {

    Repo repo;

    public ControllerHibernate(Repo repo){
        this.repo=repo;
    }
    @GetMapping("/persons/by-city")
    public List getCity(@RequestParam String city){
        return repo.getPersonsByCity(city);
    }
}
