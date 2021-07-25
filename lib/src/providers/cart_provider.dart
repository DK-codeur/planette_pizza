import 'package:flutter/material.dart';

class CartItem {
  final int id;
  final String title;
  final int quantity;
  final double price;
  final String image;

  CartItem({
    @required this.id, 
    @required this.title, 
    @required this.quantity, 
    @required this.price,
    @required this.image
  });
}

class Cart with ChangeNotifier {

  Map<int, CartItem> _items = {};

  Map<int, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });

    return total;
  }

  void addItem(int productId, double price, String title, String image, int qty) {
   
    if (_items.containsKey(productId)) {
      _items.update(
        productId, 
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + qty,
          image: existingCartItem.image
        )
      );

    } else {
      _items.putIfAbsent(
        productId, 
        () => CartItem(
          id: productId, //date id 
          title: title, 
          price: price,
          quantity: qty,
          image: image
        )
      );
    }

    notifyListeners();
  }

  void removeItem(int productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }


} //Cart
