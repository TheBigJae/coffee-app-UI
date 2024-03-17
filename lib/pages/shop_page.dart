import 'dart:js_util';

import 'package:coffeeapp/components/coffee_tile.dart';
import 'package:coffeeapp/models/coffee.dart';
import 'package:coffeeapp/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add coffee to cart
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
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
                      'How would you like you coffee?',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    //List of Coffee User Can Buy
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.coffeeShop.length,
                            itemBuilder: (context, index) {
                              //Get Individual Coffees
                              Coffee eachCoffee = value.coffeeShop[index];

                              //Return The Coffee Tiles

                              return CoffeeTile(
                                icon: Icon(Icons.add),
                                coffee: eachCoffee,
                                onPressed: () => addToCart(eachCoffee),
                              );
                            }))
                  ],
                ),
              ),
            ));
  }
}
