package com.codingdojo.fullCrudPoke.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.fullCrudPoke.models.Expense;

@Repository
public interface TripRepository extends CrudRepository<Expense, Long>{
	List<Expense> findAll();
}
