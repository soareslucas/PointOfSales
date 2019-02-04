package br.com.goinf.domain;

import java.util.List;

import javax.annotation.PostConstruct;

import br.com.goinf.DAO.BrandDAO;
import br.com.goinf.entities.Brand;

public class BrandDomain {
	
	
	private BrandDAO brandDAO = new BrandDAO();
//	
//	
//    @PostConstruct
//    public void init() {
//        brandDAO = new BrandDAO();
//    }
	
    public BrandDAO getBrandDAO() {
        return brandDAO;
    }
	
	public void save(Brand brand) {
		getBrandDAO().persist(brand);
	}
	
	public List getList() {
		return getBrandDAO().findAll();
	}
	
	public void delete(Brand brand) {
		getBrandDAO().remove(brand);
	}
	
	public Brand load(int idBrand) {
		return getBrandDAO().getById(idBrand);
	}
	
	public void update(Brand brand) {
		getBrandDAO().merge(brand);
	}
	
	
	

}
