package com.DAO;

import java.util.List;

import com.entity.Item;

public interface ItemDAO {
public boolean addItems(Item b);

public  List<Item> getAllItems();

public Item getItemById(int id);

public boolean updateEditItems(Item b);

public boolean deleteitems(int id);

public List<Item> getBakery();

public List<Item> getBeverages();

public List<Item> getCookingEssentials();

public List<Item> getAllBakery();

public List<Item> getAllBeverages();

public List<Item> getAllCookingEssentials();

public List<Item> getFrozenFood();

public List<Item>getAllFrozenFood();

public List<Item> getVegetables();

public List<Item> getFruits();

public List<Item> getAllVegetables();

public List<Item> getAllFruits();

public List<Item> getItemBySearch(String ch);





}
