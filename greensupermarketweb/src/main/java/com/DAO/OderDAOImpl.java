package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Oder;

public class OderDAOImpl implements OderDAO {
private Connection conn;

public OderDAOImpl(Connection conn) {
	super();
	this.conn = conn;
}




@Override
public boolean saveoder(List<Oder>  blist) {
	boolean f=false;
	try {
		String sql="insert into oder(oderid,username,email,address,phno,item,price,payment) values(?,?,?,?,?,?,?,?)";
		conn.setAutoCommit(false);
		PreparedStatement ps=conn.prepareStatement(sql);
		for(Oder b:blist)
		{
			ps.setString(1, b.getOderId());
			ps.setString(2, b.getUsername());
			ps.setString(3, b.getEmail());
			ps.setString(4, b.getFulladdress());
			ps.setString(5, b.getPhno());
			ps.setString(6, b.getItem());
			ps.setString(7, b.getPrice());
			ps.setString(8, b.getPayment());
			ps.addBatch();
		}
		
		conn.commit();
		f=true;
		conn.setAutoCommit(true);
		
		
		
		
	} catch (Exception e) {
	e.printStackTrace();
	}
	
	
	return f;
}




@Override
public List<Oder> getItem(String email) {
	List<Oder> list=new ArrayList<Oder>();
	Oder o=null;
	try {
		String sql="select * from oder where email=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, email);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			o=new Oder();
			o.setId(rs.getInt(1));
			o.setOderId(rs.getString(2));
			o.setUsername(rs.getString(3));
			o.setEmail(rs.getString(4));
			o.setFulladdress(rs.getString(5));
			o.setPhno(rs.getString(6));
			o.setItem(rs.getString(7));
			o.setPrice(rs.getString(8));
			o.setPayment(rs.getString(9));
			list.add(o);
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}




@Override
public List<Oder> getAllItem() {
	
	List<Oder> list=new ArrayList<Oder>();
	Oder o=null;
	try {
		String sql="select * from oder";
		PreparedStatement ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			o=new Oder();
			o.setId(rs.getInt(1));
			o.setOderId(rs.getString(2));
			o.setUsername(rs.getString(3));
			o.setEmail(rs.getString(4));
			o.setFulladdress(rs.getString(5));
			o.setPhno(rs.getString(6));
			o.setItem(rs.getString(7));
			o.setPrice(rs.getString(8));
			o.setPayment(rs.getString(9));
			list.add(o);
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

}
