package com.angelgr.bookingrestaurant.services;

import com.angelgr.bookingrestaurant.exceptions.BookingException;
import com.angelgr.bookingrestaurant.jsons.RestaurantRest;

public interface RestaurantService {
  RestaurantRest geRestaurantById(Long restaurantId) throws BookingException;
}