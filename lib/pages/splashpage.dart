import 'package:covfeflutter/const.dart';
import 'package:covfeflutter/pages/mainpage.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void logIn(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainPage()),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: safeAreaPadding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset('lib/images/coffeemain.png')
                ),
                Text(
                  "Covfeflutter",
                  style: TextStyle(fontSize: 54, fontWeight: FontWeight.w900),
                ),
                GestureDetector(
                  onTap: logIn,
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.brown
                    ),
                    child: const Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(color: Colors.white)
                      )
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}