// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/components/bottom_navbar.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {

  //keep track of sleted index
  int _selectedIndex=0;

  //update selected Index

  void navigatBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  //pages to display
  final List<Widget> _pages=[
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index)=>navigatBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon:Icon(Icons.menu,color:Colors.black) ,
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child:Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Column(
              children: [
                 //logo
              DrawerHeader(
                child: Image.asset(
                  "lib/images/dn.png",
                color:Colors.white
                )),
          
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25),
                    child: Divider(
                      color:Colors.grey[900],
                    ),
                  ),
          
              //other Pages
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: ListTile(
                  leading: Icon(Icons.home,color:Colors.white),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:25),
                child: ListTile(
                  leading: Icon(Icons.info,color:Colors.white),
                  title: Text(
                    "About",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
              ),
              ],),

              Padding(
                padding: const EdgeInsets.only(left:25,bottom:25),
                child: ListTile(
                  leading: Icon(Icons.logout,color:Colors.white),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
              )
            ]
            ,),
        )

        
      ),
      body:_pages[_selectedIndex]
    );
  }
}