import 'package:covfeflutter/const.dart';
import 'package:covfeflutter/models/coffee.dart';
import 'package:covfeflutter/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context){
    return Consumer<CoffeeShop>(builder: (context, value, child) =>
      SafeArea(
        child: Padding(
          padding: safeAreaPadding,
          child: Column(
            children: [
              Text(
                'How would you like your coffee?',
                style: TextStyle(fontSize: 20)
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.coffeeShop[index];

                    return ListTile(
                      title: Text(eachCoffee.name),
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