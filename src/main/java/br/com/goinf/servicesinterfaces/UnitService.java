package br.com.goinf.servicesinterfaces;

import java.util.List;
import br.com.goinf.entities.Unit;

public interface  UnitService {
				
	public void save(Unit unit);

	public List getList();
	
	public void delete(Unit unit);
	
	public Unit load(int idUnit);
	
	public void update(Unit unit);

}
