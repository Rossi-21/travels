package com.rossi21.travels.controllers;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rossi21.travels.models.Travel;
import com.rossi21.travels.services.TravelService;

@Controller
public class TravelController {
	@Autowired
	TravelService travelService;
	
    @RequestMapping("/expenses")
    public String travels(Model model, @ModelAttribute("travel") Travel travel) {
    	List<Travel> travels = travelService.allTravels();
        model.addAttribute("travels", travels);
        return "index.jsp";
	    }
	
    @PostMapping("/travels")
    public String create(@Valid @ModelAttribute("travel") Travel travel, BindingResult result) {
        if (result.hasErrors()) {
            return "index.jsp";
        } else {
        	travelService.createTravel(travel);
            return "redirect:/expenses";
        }
    }
    
    @RequestMapping("/expenses/{id}")
	public String index(Model model, @PathVariable("id")Long id) {
		Travel travel = travelService.findTravel(id);
		model.addAttribute("travel", travel);
		return "show.jsp";
		}
    
    @RequestMapping("/expenses/{id}/edit")
    public String edit(@PathVariable("id") Long id, Model model) {
    	Travel travel = travelService.findTravel(id);
        model.addAttribute("travel", travel);
        return "edit.jsp";
    }
    
    @RequestMapping(value="/expenses/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("travel") Travel travel, BindingResult result) {
        if (result.hasErrors()) {
            return "edit.jsp";
        } else {
        	travelService.updateTravel(travel);
            return "redirect:/expenses";
        }
    }
    
    @DeleteMapping("/expenses/{id}")
    public String destroy(@PathVariable("id") Long id) {
        travelService.deleteTravel(id);
        return "redirect:/expenses";
    }

}
