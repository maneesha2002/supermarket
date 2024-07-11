package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.entity.User;

public  class UserDAOImpl implements UserDAO {
	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean userRegister(User us) {
	
		boolean f=false;
		try {
			String sql="insert into user(name,email,phno,password) values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,us.getName());
			ps.setString(2,us.getEmail());
			ps.setString(3,us.getPhno());
			ps.setString(4,us.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1) {
				
				f=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return f;
	}

	
	public User login(String email, String password) {
    User us=null;
		try {
			String sql="select * from user where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				us=new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setAddress(rs.getString(6));
				us.setLandmark(rs.getString(7));
				us.setCity(rs.getString(8));
				us.setState(rs.getString(9));
				us.setPincode(rs.getString(10));	
			}

			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return us;
	}

	@Override
	public User getUserById(int i) {
		User b=null;
		try {
			String sql="select * from user where id==?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,i);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				b=new User();
				b.setId(rs.getInt(1));
				b.setName(rs.getString(2));
				b.setEmail(rs.getString(3));
				b.setPhno(rs.getString(4));
				b.setPassword(rs.getString(5));
				b.setAddress(rs.getString(6));
				b.setLandmark(rs.getString(7));
				b.setCity(rs.getString(8));
				b.setState(rs.getString(9));
				b.setPincode(rs.getString(10));	
				
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return b;
	}

	@Override
	public List<User> getAllUser() {
		List<User> list =new ArrayList<User>();
		User b=null;
		try {
			String sql="select * from user";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				b=new User();
				b.setId(rs.getInt(1));
				b.setName(rs.getString(2));
				b.setEmail(rs.getString(3));
				b.setPhno(rs.getString(4));
				b.setPassword(rs.getString(5));
				b.setAddress(rs.getString(6));
				b.setLandmark(rs.getString(7));
				b.setCity(rs.getString(8));
				b.setState(rs.getString(9));
				b.setPincode(rs.getString(10));	
				list.add(b);
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
		return list;
		
	}

	@Override
	public boolean checkPassword(int id,String ps) {
		boolean f=false;
		try {
			String sql="select * from user where id=? and password=?";
			PreparedStatement psw=conn.prepareStatement(sql);
			psw.setInt(1,id );
			psw.setString(2, ps);
			
			ResultSet rs=psw.executeQuery();
			while(rs.next()) {
				f=true;
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return f;
	}

	@Override
	public boolean updateProfile(User cs) {
		boolean f=false;
		try {
			String sql="update user set name=?,email=?,phno=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,cs.getName());
			ps.setString(2,cs.getEmail());
			ps.setString(3,cs.getPhno());
		    ps.setInt(4,cs.getId());
			
			int i=ps.executeUpdate();
			if(i==1) {
				
				f=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return f;
		
	}

	
	
	
	

}
