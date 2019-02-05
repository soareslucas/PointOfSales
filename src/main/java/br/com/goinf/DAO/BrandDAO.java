
package br.com.goinf.DAO;

import java.util.List;
import javax.persistence.*;

import org.springframework.stereotype.Repository;

import br.com.goinf.entities.Brand;;


@Repository
public class BrandDAO
{
	
	@PersistenceContext
	private EntityManager entityManager;


    public Brand getById(int id){
        return (Brand)entityManager.find(br.com.goinf.entities.Brand.class, Integer.valueOf(id));
    }

    public List findAll(){
        return entityManager.createQuery((new StringBuilder()).append("FROM ").append(br.com.goinf.entities.Brand.class.getName()).append(" b ORDER BY b.id").toString()).getResultList();
    }

    public void persist(Brand brand){
        try{
            entityManager.getTransaction().begin();
            entityManager.persist(brand);
            entityManager.getTransaction().commit();
            entityManager.refresh(brand);
        }
        catch(Exception ex){
            ex.printStackTrace();
            entityManager.getTransaction().rollback();
        }
    }

    public void merge(Brand brand){
        try{
            entityManager.getTransaction().begin();
            Brand persisted = getById(brand.getId());
            persisted.setName(brand.getName());
            entityManager.merge(persisted);
            entityManager.getTransaction().commit();
            entityManager.refresh(brand);
        }
        catch(Exception ex){
            ex.printStackTrace();
            entityManager.getTransaction().rollback();
        }
    }

    public void remove(Brand brand){
        try{
            entityManager.getTransaction().begin();
            brand = (Brand)entityManager.find(br.com.goinf.entities.Brand.class, brand.getId());
            entityManager.remove(brand);
            entityManager.getTransaction().commit();
        }
        catch(Exception ex){
            System.out.println(ex.toString());
            entityManager.getTransaction().rollback();
        }
    }

    public void removeById(int id){
        try{
            Brand brand = getById(id);
            remove(brand);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }

}
