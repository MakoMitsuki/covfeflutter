import 'package:covfeflutter/components/coffee_gridbox.dart';
import 'package:covfeflutter/const.dart';
import 'package:covfeflutter/models/coffee.dart';
import 'package:covfeflutter/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Consumer<CoffeeShop>(builder: (context, value, child) => SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HOMEPAGE HELLO
            Padding(
              padding: safeAreaPaddingH,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Yulia',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)
                  ),
                  /*GridView.builder(
                      itemCount: value.coffeeShop.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                      ),
                      itemBuilder: (context, index) {
                        Coffee eachCoffee = value.coffeeShop[index];

                        return CoffeeGridBox(
                          coffee: eachCoffee,
                          onPressed: () => {},
                          icon: Icon(Icons.add)
                        );
                      }
                    ),*/
                ]
              ),
            ),
          ]
        ),
      ),
    )
    );
  }
}