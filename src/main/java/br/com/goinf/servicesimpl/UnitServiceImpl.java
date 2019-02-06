package br.com.goinf.servicesimpl;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.goinf.dao.UnitDAO;
import br.com.goinf.entities.Unit;
import br.com.goinf.servicesinterfaces.UnitService;


@Service("UnitService")
@Transactional
public class UnitServiceImpl implements UnitService{
	
	@Autowired
	private UnitDAO unitDAO;
	
	public void save(Unit unit) {
    	unitDAO.persist(unit);
	}

	public List getList() {
		return unitDAO.findAll();
	}
	
	public void delete(Unit unit) {
    	unitDAO.remove(unit);
	}
	
	public Unit load(int idUnit) {
		return unitDAO.getById(idUnit);
	}
	
	public void update(Unit unit) {
    	unitDAO.merge(unit);
	}
	
	
	

}
