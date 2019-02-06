package br.com.goinf.servicesinterfaces;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.goinf.dao.BrandDAO;
import br.com.goinf.entities.Brand;

public interface  BrandService {
				
	public void save(Brand brand);

	public List getList();
	
	public void delete(Brand brand);
	
	public Brand load(int idBrand);
	
	public void update(Brand brand);
	
	
	

}
