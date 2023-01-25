package ru.netology.sql.Repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import org.springframework.stereotype.Repository;
import ru.netology.sql.Person;

import java.util.List;

@Repository
public class Repo {
    @PersistenceContext
    public EntityManager entityManager;

    public List getPersonsByCity(String city) {
        Query query = entityManager.createQuery("select Person from Person where Person.cityOfLiving = :city", Person.class);
        query.setParameter("city", city);

        return query.getResultList();
    }
}
