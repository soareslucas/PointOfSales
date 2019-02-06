
package br.com.goinf.dao;

import java.util.List;
import javax.persistence.*;

import org.springframework.stereotype.Repository;

import br.com.goinf.entities.Unit;;


@Repository("UnitDAO")
public class UnitDAO
{
	
	@PersistenceContext
	private EntityManager entityManager;


    public Unit getById(int id){
        return (Unit)entityManager.find(br.com.goinf.entities.Unit.class, Integer.valueOf(id));
    }

    public List findAll(){
        return entityManager.createQuery((new StringBuilder()).append("FROM ").append(br.com.goinf.entities.Unit.class.getName()).append(" b ORDER BY b.id").toString()).getResultList();
    }

    public void persist(Unit unit){
        try{
            entityManager.persist(unit);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }

    public void merge(Unit unit){
        try{
            Unit persisted = getById(unit.getId());
            persisted.setName(unit.getName());
            entityManager.merge(persisted);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }

    public void remove(Unit unit){
        try{
            unit = (Unit)entityManager.find(br.com.goinf.entities.Unit.class, unit.getId());
            entityManager.remove(unit);
        }
        catch(Exception ex){
            System.out.println(ex.toString());
        }
    }

    public void removeById(int id){
        try{
            Unit unit = getById(id);
            remove(unit);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }

}
