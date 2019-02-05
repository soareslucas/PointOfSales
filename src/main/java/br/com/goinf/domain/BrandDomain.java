package br.com.goinf.domain;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.goinf.DAO.BrandDAO;
import br.com.goinf.ServicesInterfaces.BrandService;
import br.com.goinf.entities.Brand;

@Transactional
@Service
public class BrandDomain implements BrandService{
	
	private BrandDAO brandDAO;
	
	@Autowired
    @Override
	public void BrandDomain(BrandDAO brandDAO) {
		this.brandDAO = brandDAO;
	}
	
    
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
