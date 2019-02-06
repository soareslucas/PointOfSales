
package br.com.goinf.dao;

import java.util.List;
import javax.persistence.*;

import org.springframework.stereotype.Repository;

import br.com.goinf.entities.Brand;;


@Repository("BrandDAO")
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
            entityManager.persist(brand);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }

    public void merge(Brand brand){
        try{
            Brand persisted = getById(brand.getId());
            persisted.setName(brand.getName());
            entityManager.merge(persisted);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }

    public void remove(Brand brand){
        try{
            brand = (Brand)entityManager.find(br.com.goinf.entities.Brand.class, brand.getId());
            entityManager.remove(brand);
        }
        catch(Exception ex){
            System.out.println(ex.toString());
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
