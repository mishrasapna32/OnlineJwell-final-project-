package com.jwellStore.service;

import com.jwellStore.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}

