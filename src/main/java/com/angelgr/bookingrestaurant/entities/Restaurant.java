package com.angelgr.bookingrestaurant.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RESTAURANT")
public class Restaurant {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = true)
	private Long id;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "ADDRESS")
	private String address;
	
	@Column(name = "DESCRIPTION")
	private String description;
	
	@Column(name = "IMAGE")
	private String image;
}
