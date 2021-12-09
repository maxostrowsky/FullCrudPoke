package com.codingdojo.fullCrudPoke.controllers;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.fullCrudPoke.models.Expense;
import com.codingdojo.fullCrudPoke.services.TripService;

@Controller
public class HomeController {
	
	
	@Autowired
	TripService tripService;
	
	@GetMapping("/dashboard")
	public String combinedBoth(Model model) {
		Expense newExpense = new Expense();
		model.addAttribute("newExpense", newExpense);
		List<Expense> expenses = tripService.allExpenses();
		model.addAttribute("expenses", expenses);
		
		return "index.jsp";
	}
	
	@PostMapping("/newExpense")
	public String createExpense(@Valid @ModelAttribute("newExpense")Expense newExpense, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Expense> expenses = tripService.allExpenses();
			model.addAttribute("expenses", expenses);
			return "index.jsp";
		} else {
			tripService.addExpense(newExpense);
			return "redirect:/dashboard";
		}
	}
	
	@DeleteMapping("/trip/{id}/delete")
	public String deleteExpense(@PathVariable("id")Long id) {
		tripService.deleteExpense(id);
		return "redirect:/dashboard";
	}
	
	@GetMapping("/show/{id}")
	public String showOne(@PathVariable("id")Long id, Model model) {
		Expense expense = tripService.findOneExpense(id);
		model.addAttribute("expense", expense);
		return "showOne.jsp";
	}
	
	@GetMapping("/edit/{id}/one")
	public String editExpense(@PathVariable("id")Long id, Model model) {
		Expense expense = tripService.findOneExpense(id);
		model.addAttribute("expense", expense);
		return "editOne.jsp";
	}
	
	@PostMapping("/edit/{id}/one")
	public String editOneExpense(@Valid @ModelAttribute("expense")Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "editOne.jsp";
		} else {
			tripService.addExpense(expense);
			return "redirect:/dashboard";
		}
	}
}
