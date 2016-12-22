package com.onlinestore.dao;

import java.io.IOException;

import com.onlinestore.model.Cart;

public interface CartDao {

	Cart getCartById(int cartId);

	Cart validate(int cartId) throws IOException;

	void update(Cart cart);
}
