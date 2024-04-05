// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  'lib/images/dn.png',
                  height:150,
                  
                  ),
              ),
              const SizedBox(height: 30),
              //title
              Text(
                "We Are Who We Are",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
          

              const SizedBox(height: 40,),

              //sub title
          
              const Text(
                "Brand New sneakers and custom kicks made with premium quality",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              //start Now button
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: Text('Shop Now',style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  )),
              )

            ],
            ),
        ),
      )
    );
  }
}