package com.onlinestore.service;

import com.onlinestore.model.Cart;

public interface CartService {

	Cart getCartById(int cartId);

	void update(Cart cart);
}
