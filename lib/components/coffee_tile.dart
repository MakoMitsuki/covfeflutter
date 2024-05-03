import 'package:covfeflutter/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final Widget icon;
  void Function()? onPressed;
  CoffeeTile({
    super.key,
    required this.coffee,
    required this.onPressed,
    required this.icon
  });

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ListTile(
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
    );
  }
}