import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  // when the user tap on the buttom bar
  void navigationBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

 // page to display
  final List<Widget> _pages = [
  //shop page
    const ShopPage(),
  //cart page
    const CartPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              } ,
              icon:const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ),
                )
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(child: Image.asset(
                  'lib/images/logo.png',
                  color: Colors.white,
                  width: 200,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),

                //other pages
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home,color: Colors.white,),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white ),
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.info,color: Colors.white,),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 25.0,bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout,color: Colors.white,),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white ),
                ),
              ),
            )

            
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
