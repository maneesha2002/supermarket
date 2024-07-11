package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Cart;


public class CartDAOImpl implements CartDAO {
 private Connection conn;
 public CartDAOImpl(Connection conn)
 {
	 this.conn=conn;
	 
 }
	@Override
	public boolean addCart(Cart c) {
		boolean f=false;
	try {
		String sql="insert into cart(iid,itemname,price,total_price,uid)values(?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1,c.getIid());
		
		ps.setString(2,c.getItemname());
		ps.setDouble(3, c.getPrice());
		ps.setDouble(4, c.getTotalprice());
		ps.setInt(5, c.getUserid());
		
		int i=ps.executeUpdate();
		if(i==1) {
			f=true;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		
		return f;
	}
	@Override
	public List<Cart> getItemByUser(int userId) {
		List<Cart> list=new ArrayList<Cart>();
		Cart c=null;
		
		double totalPrice=0;
		try {
			String sql="select * from cart where uid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, userId);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				c=new Cart();
				c.setCid(rs.getInt(1));
				c.setIid(rs.getInt(2));
				c.setItemname(rs.getString(3));
				c.setPrice(rs.getDouble(4));
				totalPrice=totalPrice+rs.getDouble(5);
				c.setTotalprice(totalPrice);
				c.setUserid(rs.getInt(6));
				list.add(c);
				
				
			}
				
				
				
				
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public boolean deleteItem(int iid,int uid,int cid) {
		boolean f=false;
		try {
		String sql="delete from cart where iid=? and  uid=? and cid=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, iid);
		ps.setInt(2, uid);
		ps.setInt(3, cid);
		int i=ps.executeUpdate();
		if(i==1)
		{
			f=true;
			
		}
		
		
		
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return f;
	}

	
}
