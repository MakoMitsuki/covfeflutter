import 'package:covfeflutter/components/coffee_tile.dart';
import 'package:covfeflutter/const.dart';
import 'package:covfeflutter/models/coffee.dart';
import 'package:covfeflutter/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context){
    return Consumer<CoffeeShop>(builder: (context, value, child) =>
      SafeArea(
        child: Padding(
          padding: safeAreaPadding,
          child: Column(
            children: [
              Text(
                'Your Cart',
                style: pageTitleTextStyle,
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.userCart[index];

                    return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(eachCoffee),
                      icon: Icon(Icons.delete)
                    );
                  },
                )
              ),
            ]
           )
        ),
      )
    );
  }
}