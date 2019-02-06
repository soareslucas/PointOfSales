package br.com.goinf.servicesinterfaces;

import java.util.List;
import br.com.goinf.entities.Brand;

public interface  BrandService {
				
	public void save(Brand brand);

	public List getList();
	
	public void delete(Brand brand);
	
	public Brand load(int idBrand);
	
	public void update(Brand brand);
	
	
	

}
