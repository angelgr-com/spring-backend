package com.angelgr.bookingrestaurant.services;

import java.util.List;

import com.angelgr.bookingrestaurant.exceptions.BookingException;
import com.angelgr.bookingrestaurant.jsons.RestaurantRest;

public interface RestaurantService {
	RestaurantRest getRestaurantById(Long restaurantId) throws BookingException;

	public List<RestaurantRest> getRestaurants() throws BookingException;
}