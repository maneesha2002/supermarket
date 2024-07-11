package com.entity;

public class Item {
 private int itemid;
 private String itemname;
 private String price;
 private String itemcategory;
 private String status;
 private String photoName;
 private String email;
public Item() {
	super();
	// TODO Auto-generated constructor stub
}
public Item(String itemname, String price, String itemcategory, String status, String photoName, String email) {
	super();
	this.itemname = itemname;
	this.price = price;
	this.itemcategory = itemcategory;
	this.status = status;
	this.photoName = photoName;
	this.email = email;
}
public int getItemid() {
	return itemid;
}
public void setItemid(int itemid) {
	this.itemid = itemid;
}
public String getItemname() {
	return itemname;
}
public void setItemname(String itemname) {
	this.itemname = itemname;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getItemcategory() {
	return itemcategory;
}
public void setItemcategory(String itemcategory) {
	this.itemcategory = itemcategory;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getPhotoName() {
	return photoName;
}
public void setPhotoName(String photoName) {
	this.photoName = photoName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
@Override
public String toString() {
	return "Item [itemid=" + itemid + ", itemname=" + itemname + ", price=" + price + ", itemcategory=" + itemcategory
			+ ", status=" + status + ", photoName=" + photoName + ", email=" + email + "]";
}
 
 
 
 
}
