import 'package:covfeflutter/const.dart';
import 'package:covfeflutter/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeGridBox extends StatelessWidget {
  final Coffee coffee;
  final Widget icon;
  void Function()? onPressed;
  CoffeeGridBox({
    super.key,
    required this.coffee,
    required this.onPressed,
    required this.icon
  });

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(12),
        ),
      child: Column (
        children: [
          SizedBox(
            height: 64,
            width: 64,
            child: Image.asset(coffee.imagePath, fit: BoxFit.cover,)
           ),
           Text(coffee.name),
           Text(coffee.price.toString()),
        ],
      )
    );
  }
}

/*
ListTile(
          title: Text(coffee.name),
          subtitle: Text(coffee.price),
          leading: SizedBox(
            height: 64,
            width: 64,
            child: Image.asset(coffee.imagePath, fit: BoxFit.cover,)
           ),
          trailing: IconButton(
            icon: icon,
            onPressed: onPressed,
          ),
        )
*/