package br.com.goinf.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import br.com.goinf.entities.Unit;
import br.com.goinf.servicesinterfaces.UnitService;

import java.util.List;


@Controller
public class UnitController {
	
	@Autowired
	UnitService unitService;
	   	 	
	@RequestMapping("newUnit")
	public String newUnit() {
		return "unit/new";
	}
	
	@RequestMapping("unitList")
	public ModelAndView unitList() {
		List<Unit> units = null;
		units = (List<Unit>)unitService.getList();		
		ModelAndView mv = new ModelAndView("unit/list");
		mv.addObject("units", units);
		return mv;
	}


	@RequestMapping("addUnit")
	public ModelAndView add(Unit unit) {
		 
		ModelAndView mv = null;
		
		if(unit.getName() == null || unit.getName().equals("")) {
			mv = new ModelAndView("forward:newUnit");
			mv.addObject("error", "Campo obrigatório não preenchido!");

		} else{ 
			unitService.save(unit);		
			mv = new ModelAndView("forward:unitList");
			mv.addObject("message", "Cadastro realizado com sucesso!");
		}
	
		return mv;
	}
	 

	@RequestMapping("deleteUnit")
	public ModelAndView deleteUnit(Unit unit) {
		ModelAndView mv = null;
		unitService.delete(unit);
		mv = new ModelAndView("forward:unitList");
		mv.addObject("message", "Marca excluída com sucesso!");		
		return mv;
	}
	
	
	@RequestMapping("editUnit")
	public ModelAndView editUnit(Unit unit) {

		unit = unitService.load(unit.getId());
		ModelAndView mv = null;
		mv = new ModelAndView("forward:newUnit");
		mv.addObject("unit", unit);	
		mv.addObject("action", "updateUnit");		

		return mv;
	}
	
	@RequestMapping("updateUnit")
	public ModelAndView updateUnit(Unit unit) {
		ModelAndView mv = null;
		unitService.update(unit);
		mv = new ModelAndView("forward:unitList");
		mv.addObject("message", "Marca atualizada com sucesso!");		
		return mv;
	}
	
	
	


}
