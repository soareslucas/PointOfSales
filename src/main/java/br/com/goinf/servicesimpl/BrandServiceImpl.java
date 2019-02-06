package br.com.goinf.servicesimpl;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.goinf.dao.BrandDAO;
import br.com.goinf.entities.Brand;
import br.com.goinf.servicesinterfaces.BrandService;


@Service("BrandService")
@Transactional
public class BrandServiceImpl implements BrandService{
	
	@Autowired
	private BrandDAO brandDAO;
	
	public void save(Brand brand) {
    	brandDAO.persist(brand);
	}

	public List getList() {
		return brandDAO.findAll();
	}
	
	public void delete(Brand brand) {
    	brandDAO.remove(brand);
	}
	
	public Brand load(int idBrand) {
		return brandDAO.getById(idBrand);
	}
	
	public void update(Brand brand) {
    	brandDAO.merge(brand);
	}
	
	
	

}
