package com.rossi21.travels.services;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.rossi21.travels.models.Travel;
import com.rossi21.travels.repositories.TravelRepository;

@Service  
public class TravelService {
	 // adding the travel repository as a dependency
    private final TravelRepository travelRepository;
    
    public TravelService(TravelRepository travelRepository) {
        this.travelRepository = travelRepository;
    }
    // returns all the travel's
    public List<Travel> allTravels() {
        return travelRepository.findAll();
    }
    // creates a travel
    public Travel createTravel(Travel t) {
        return travelRepository.save(t);
    }
    // retrieves a travel
    public Travel findTravel(Long id) {
        Optional<Travel> optionalTravel = travelRepository.findById(id);
        if(optionalTravel.isPresent()) {
            return optionalTravel.get();
        } else {
            return null;
        }
    }
	public Travel updateTravel(Travel t) {
		return travelRepository.save(t);
	}
	public void deleteTravel(Long id) {
		travelRepository.deleteById(id);
	}
}
