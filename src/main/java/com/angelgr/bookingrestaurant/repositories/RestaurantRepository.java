package com.angelgr.bookingrestaurant.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.angelgr.bookingrestaurant.entities.Restaurant;

@Repository
public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {
	Optional<Restaurant> findById(Long id);
	
	Optional<Restaurant> findByName(String nameRestaurant);
	
	// JPA query equivalent to @Query(value="SELECT * FROM restaurant",nativeQuery =
	// true)
	@Query("SELECT REST FROM Restaurant REST")
	public List<Restaurant> findRestaurants();
}
