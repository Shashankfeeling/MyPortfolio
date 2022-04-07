import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/page/splash.dart';
import 'page/home.dart';
void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shashank Patel-Portfolio',
      theme: ThemeData(
        
      ),
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}

