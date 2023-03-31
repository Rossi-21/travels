package com.rossi21.travels.repositories;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.rossi21.travels.models.Travel;

@Repository
public interface TravelRepository extends CrudRepository<Travel, Long> {
	List<Travel> findAll();
	List<Travel> findByVendorContaining(String search);
	Long countByNameContaining(String search);
	Long deleteByNameStartingWith(String search);
}
