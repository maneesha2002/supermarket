package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Item;

public class ItemDAOImpl implements ItemDAO{

	private Connection conn;
	
	
	
	public ItemDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}



	@Override
	public boolean addItems(Item b) {
		boolean f=false;
		try {
			String sql="insert into items(itemname,price,itemcategory,status,photo,email)values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, b.getItemname());
			ps.setString(2, b.getPrice());
			ps.setString(3, b.getItemcategory());
			ps.setString(4, b.getStatus());
			ps.setString(5, b.getPhotoName());
			ps.setString(6, b.getEmail());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
				
			}
			
			
		}catch(Exception e){
			
		e.printStackTrace();	
		}
		return f;
	}



	@Override
	public List<Item> getAllItems() {
	List<Item> list =new ArrayList<Item>();
	Item b=null;
	try {
		String sql="select * from items";
		PreparedStatement ps=conn.prepareStatement(sql);
		
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list.add(b);
		}
	}catch(Exception e){
		
		e.printStackTrace();
	}
	
	
	return list;
	}



	@Override
	public Item getItemById(int id) {
		Item b=null;
		try {
			
			String sql="select * from items where itemid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				b= new Item();
				b.setItemid(rs.getInt(1));
				b.setItemname(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setItemcategory(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				b.setEmail(rs.getString(7));
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
	return b;
	}



	@Override
	public boolean updateEditItems(Item b) {
		boolean f= false;
		try {
			
			String sql="update items set itemname=?,price=?,status=? where itemid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, sql);
			
			ps.setString(1, b.getItemname());
			ps.setString(2,b.getPrice());
			ps.setString(3, b.getStatus());
			ps.setInt(4,b.getItemid());
			
			int i=ps.executeUpdate();
			if (i==1) {
				
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return f;
	}



	@Override
	public boolean deleteitems(int id) {
		boolean f=false;
		try {
			String sql="delete from items where itemid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}



	@Override
	public List<Item> getBakery() {
		List<Item> list=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Bakery");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		 int i=1;
		while(rs.next() && i<=4)
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list.add(b);
			i++;
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}



	@Override
	public List<Item> getBeverages() {
		List<Item> list2=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Beverages");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		 int i=1;
		while(rs.next() && i<=4)
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list2.add(b);
			i++;
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list2;
	}



	@Override
	public List<Item> getCookingEssentials() {
		List<Item> list3=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"CookingEssentials");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		 int i=1;
		while(rs.next() && i<=4)
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list3.add(b);
			i++;
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list3;
	}



	@Override
	public List<Item> getAllBakery() {
		List<Item> list=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Bakery");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list.add(b);
			
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}



	@Override
	public List<Item> getAllBeverages() {
		List<Item> list2=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Beverages");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
	
		while(rs.next())
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list2.add(b);
			
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list2;
	}



	@Override
	public List<Item> getAllCookingEssentials() {
		List<Item> list3=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"CookingEssentials");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		 
		while(rs.next())
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list3.add(b);
			
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list3;
	}



	@Override
	public List<Item> getFrozenFood() {
		List<Item> list4=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Frozen Food");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		 int i=1;
		while(rs.next() && i<=4)
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list4.add(b);
			i++;
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list4;
	}



	@Override
	public List<Item> getAllFrozenFood() {
		List<Item> list=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Frozen Food");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list.add(b);
			
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}



	@Override
	public List<Item> getVegetables() {
		List<Item> list5=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Vegetables");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		 int i=1;
		while(rs.next() && i<=4)
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list5.add(b);
			i++;
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list5;
		
	}



	@Override
	public List<Item> getFruits() {
		List<Item> list6=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Fruits");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		 int i=1;
		while(rs.next() && i<=4)
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list6.add(b);
			i++;
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list6;
		
	}



	@Override
	public List<Item> getAllVegetables() {
		List<Item> list=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Vegetables");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list.add(b);
			
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}



	@Override
	public List<Item> getAllFruits() {
		List<Item> list=new ArrayList<Item>();
		Item b=null;
		try {
			String sql ="select * from items where itemcategory=? and status=? order by itemid DESC";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,"Fruits");
		 ps.setString(2, "Active");
		 ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
		 b=new Item();
			b.setItemid(rs.getInt(1));
			b.setItemname(rs.getString(2));
			b.setPrice(rs.getString(3));
			b.setItemcategory(rs.getString(4));
			b.setStatus(rs.getString(5));
			b.setPhotoName(rs.getString(6));
			b.setEmail(rs.getString(7));
			list.add(b);
			
		 
		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}



	@Override
	public List<Item> getItemBySearch(String ch) {
		
		List<Item> list =new ArrayList<Item>();
		Item b=null;
		try {
			String sql="select * from items where itemname like ? or itemcategory like ? and status=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "%"+ch+"%");
			ps.setString(2, "%"+ch+"%");
			ps.setString(3,"Active");
			
			
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				b=new Item();
				b.setItemid(rs.getInt(1));
				b.setItemname(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setItemcategory(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				b.setEmail(rs.getString(7));
				list.add(b);
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		return list;
	}
	



	

  
	
	
	
	
	
}
