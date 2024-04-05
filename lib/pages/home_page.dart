import 'package:ecommerce_app/components/bottom_navbar.dart';
import 'package:flutter/material.dart';

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
    );
  }
}