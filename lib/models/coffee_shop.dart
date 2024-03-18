import 'package:coffeeapp/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    //black Coffee
    Coffee(
        name: 'Long Black', price: '4.18', imagePath: 'lib/images/coffee1.png'),
    //Espresso
    Coffee(
        name: 'Esspresso', price: '4.18', imagePath: 'lib/images/coffee2.png'),
    //Iced Coffee
    Coffee(
        name: 'Iced Coffeee',
        price: '4.18',
        imagePath: 'lib/images/coffee3.png'),
    //Latte
    Coffee(name: 'Latte', price: '4.18', imagePath: 'lib/images/coffee4.png')
  ];
  // user cart
  List<Coffee> _userCart = [];
  //get coffee list
  List<Coffee> get coffeeShop => _shop;
  //get user cart
  List<Coffee> get userCart => _userCart;
  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
