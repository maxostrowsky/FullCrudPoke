package com.codingdojo.fullCrudPoke.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.fullCrudPoke.models.Expense;
import com.codingdojo.fullCrudPoke.repositories.TripRepository;

@Service
public class TripService {
	
	private final TripRepository tripRepo;
	
	public TripService(TripRepository tripRepo) {
		this.tripRepo = tripRepo;
	}
	// ****** Find All ************
	public List<Expense> allExpenses(){
		return tripRepo.findAll();
	}
	
	public Expense addExpense(Expense expense) {
		return tripRepo.save(expense);
	}
	
	public void deleteExpense(Long id) {
		tripRepo.deleteById(id);
	}
	
	public Expense findOneExpense(Long id) {
		Optional<Expense> optionalExpense = tripRepo.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	
	}
	public Expense editExpense(Expense expense) {
		return tripRepo.save(expense);
	}
}

