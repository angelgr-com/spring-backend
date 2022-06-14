package com.angelgr.bookingrestaurant.services.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.angelgr.bookingrestaurant.entities.Restaurant;
import com.angelgr.bookingrestaurant.exceptions.BookingException;
import com.angelgr.bookingrestaurant.exceptions.NotFoundException;
import com.angelgr.bookingrestaurant.jsons.RestaurantRest;
import com.angelgr.bookingrestaurant.repositories.RestaurantRepository;
import com.angelgr.bookingrestaurant.services.RestaurantService;

public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	RestaurantRepository restaurantRepository;

	public static final ModelMapper modelMapper = new ModelMapper();

	public RestaurantRest geRestaurantById(Long restaurantId) throws BookingException {
		return modelMapper.map(getRestaurantEntity(restaurantId), RestaurantRest.class);
	}

	private Restaurant getRestaurantEntity(Long restaurantId) throws BookingException {
		return restaurantRepository.findById(restaurantId)
				.orElseThrow(() -> new NotFoundException("SNOT->404-1", "RESTAURANT_NOT_FOUND"));
	}

}