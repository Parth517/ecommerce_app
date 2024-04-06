// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/components/shoe_tile.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        //search Bar
       Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color:  Colors.grey[200],
          borderRadius: BorderRadius.circular(8)),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text("Search",
          style: TextStyle(color: Colors.grey),
          ),
        Icon(Icons.search,
          color:Colors.grey
        ),
        ],
        )
       ),
       //Message
       Padding(
         padding: const EdgeInsets.symmetric(vertical:12.0),
         child: Text(
          "Everyone flies... some fly longer than others",
          style: TextStyle(
            color:Colors.grey[600]
          ),
          ),
       ),

       //HOt picks
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
          Text(
            "Hot Picks ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
            ),
          Text(
            "See all",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:Colors.blue
            ),
            )
         ],),
       ),
       const SizedBox(height: 10),

       Expanded(child: ListView.builder(
         itemBuilder: (BuildContext context, int index) {
           return ShoeTile();
         },
       ),)
      ],      
    );
  }
}