package com.DAO;

import java.util.List;

import com.entity.Oder;

public interface OderDAO  {
	
	
	
	public boolean saveoder(List<Oder> blist);
    
	public List<Oder> getItem(String email);
	
	public List<Oder> getAllItem();
}
