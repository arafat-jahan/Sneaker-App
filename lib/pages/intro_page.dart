import 'package:flutter/material.dart';

import 'home_page.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //logo
          Padding(padding: const EdgeInsets.all(25.0),
          child:Image.asset(
            'assets/images/logo-png.webp',
            height: 240,
          ),
    ),
          //title

SizedBox(height: 48,),
          Text('Just Do It',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white), ),

          //subtitle

          SizedBox(height: 24,),
          Text('Brand New Sneakers and custom kicks made with premium quality',style: TextStyle(fontSize: 16,color: Colors.white),
            textAlign: TextAlign.center,

          ),

          //start now button
          SizedBox(height: 24,),
         GestureDetector(
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()
             ),
             ),

         child: Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(25),
            child:Center(
            child: Text('Shop Now',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
            ),
          )

         ),

        ],

      ),
      ),

    );
  }
}
