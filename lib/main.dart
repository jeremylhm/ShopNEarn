import 'package:flutter/material.dart';
import 'package:shopnearn_app/screens/home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopN\'earn',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Montserrat', // Ganti font sesuai preferensi Anda
      ),
      home: HomeScreen(),
    );
  }
}


 

