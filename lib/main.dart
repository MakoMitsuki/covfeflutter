import 'package:covfeflutter/models/coffee_shop.dart';
import 'package:covfeflutter/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => const MaterialApp(
          title: 'Covfeflutter',
          home: HomePage(),
      ));
  }
}

class MyAppState extends ChangeNotifier {
}