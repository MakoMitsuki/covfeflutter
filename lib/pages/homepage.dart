import 'package:covfeflutter/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
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
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}