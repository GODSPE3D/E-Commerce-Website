package com.shop;

public class Fetch {

	int price;
	String name;
	String img;
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Fetch(String name, int price, String img) {
		super();
		this.price = price;
		this.name = name;
		this.img = img;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}