import 'package:covfeflutter/const.dart';
import 'package:covfeflutter/pages/cartpage.dart';
import 'package:covfeflutter/pages/homepage.dart';
import 'package:covfeflutter/pages/shoppage.dart';
import 'package:covfeflutter/pages/splashpage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    // navigateBottomBar
  int _selectedIndex = 0;
  void navigateDrawer(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages
  final List<Widget> _pages = [
    HomePage(),
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: transparent,
      ),
      drawer: Drawer(
        child: Container(
          color: mainColor,
          child: ListView(
            children: [
              ListTile(
                title: Text('Covfeflutter', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, color: Colors.white, ))
              ),
              ListTile(
                leading: Icon(Icons.home, size: 35, color: Colors.white),
                title: Text('Home', style: menuListItemTextStyle),
                onTap: () {
                  navigateDrawer(0);
                  Navigator.of(context).pop();
                }
              ),
              ListTile(
                leading: Icon(Icons.coffee, size: 35, color: Colors.white),
                title: Text('Coffee Shop', style: menuListItemTextStyle),
                onTap: () {
                  navigateDrawer(1);
                  Navigator.of(context).pop();
                }
              ),
               ListTile(
                leading: Icon(Icons.shopping_bag, size: 35, color: Colors.white),
                title: Text('Your Order', style: menuListItemTextStyle),
                onTap: () {
                  navigateDrawer(2);
                  Navigator.of(context).pop();
                }
              ),
              ListTile(
                leading: Icon(Icons.logout, size: 35, color: Colors.white),
                title: Text('Logout', style: menuListItemTextStyle),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SplashPage()),
                  );
                }
              ),
            ],
          )
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}