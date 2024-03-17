import 'package:coffeeapp/components/coffee_tile.dart';
import 'package:coffeeapp/models/coffee.dart';
import 'package:coffeeapp/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  //remove item from cart 

  void removeFromCart(Coffee coffee){
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
              ),

              //List of Cart Items
              Expanded(child: ListView.builder(itemBuilder: (context, index) {
                //get Individual cart items
                Coffee eachCoffee = value.userCart[index];

                // return coffee tile
                return CoffeeTile(coffee: eachCoffee, onPressed: removeFromCart, icon: Icon(Icons.delete),)
              }))
            ],
          ),
        ),
      ),
    );
  }
}
