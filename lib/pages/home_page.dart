import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/components/bottom_nav_bar.dart';
import 'package:sneaker_shop_app/pages/shop_page.dart';

import 'cart_page.dart';


class HomePage extends StatefulWidget {


  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // this method will update our selected index
  // when the user taps on the bottom bar
  void navigateBottomBar(int index){
    setState(() {

      _selectedIndex = index;
    });
  }
  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cartpage
    CartPage()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            //logo
            DrawerHeader(child: Image.asset('assets/images/logo-png.webp'),
            ),
            Padding(
            padding: const EdgeInsets.all(8.0),

           child: Divider(
              color: Colors.black,

            )

            //other pages



            ), //
          ],
        ),
      ),
      body: _pages[_selectedIndex],

    );
  }
}

