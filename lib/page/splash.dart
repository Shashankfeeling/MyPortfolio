import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_portfolio/page/home.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';
class splash extends StatefulWidget {
  splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  
  @override
  void initState() { 
    super.initState();
  Timer(Duration(seconds: 3),
  () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "Shashank Portfolio",)))
  );
  
  }
  Widget build(BuildContext context) {
    return Container(
      
      child: VxAnimatedBox(
      ).size(context.screenWidth, context.screenHeight).withGradient(
     LinearGradient(colors:[
       Themee.pc1,
       Themee.pc2
     ],
     begin: Alignment.topLeft,
     end: Alignment.bottomRight)
   ).bgImage(DecorationImage(image: NetworkImage("assets/assets/sp.png"),
   )
   )

   .make(),
   
    );
  }
}
