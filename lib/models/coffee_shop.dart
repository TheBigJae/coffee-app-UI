import 'package:coffeeapp/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop {
  // coffee for sale list
  final List<Coffee> _shop = [
    //black Coffee
    Coffee(name: 'Long Black', price: '4.18', imagePath: 'lib/icons/coffee1.svg'),
    //Espresso
    Coffee(name: 'Esspresso', price: '4.18', imagePath: 'lib/icons/coffee2.svg'),
    //Iced Coffee
    Coffee(
        name: 'Iced Coffeee', price: '4.18', imagePath: 'lib/icons/coffee3.svg'),
    //Latte
    Coffee(name: 'Latte', price: '4.18', imagePath: 'lib/icons/coffee4.svg')
  ];
  // user cart
  List<Coffee> _userCart = [];
  //get coffee list
  List<Coffee> get coffeeShop => [];
  //get user cart
  List<Coffee> get userCart => _userCart;
  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
  }
}
