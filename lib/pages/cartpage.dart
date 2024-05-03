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

  void payNow() {
    Provider.of<CoffeeShop>(context, listen: false).emptyCart();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Payment Complete")
      )
    );
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
              Text(
                'Cart Total: ${oCcy.format(Provider.of<CoffeeShop>(context, listen: false).getUserCartTotal())}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown
                  ),
                  child: const Center(
                    child: Text(
                      "Pay Now",
                      style: TextStyle(color: Colors.white)
                    )
                  ),
                )
              ),
            ]
           )
        ),
      )
    );
  }
}