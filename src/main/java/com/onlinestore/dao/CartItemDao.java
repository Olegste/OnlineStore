package com.onlinestore.dao;

import com.onlinestore.model.Cart;
import com.onlinestore.model.CartItem;

public interface CartItemDao {

	void addCartItem(CartItem cartItem);

	void removeCartItem(CartItem cartItem);

	void removeAllCartItems(Cart cart);

	CartItem getCartItemByProductId(int productId);

}
