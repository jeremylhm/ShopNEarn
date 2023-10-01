import 'package:flutter/material.dart';
import 'package:shopnearn_app/screens/home_screen.dart';
import 'package:shopnearn_app/screens/profile_screen.dart'; // Import HomeScreen jika diperlukan

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
      initialRoute: '/', // Set route awal ke WelcomeScreen
      routes: {
        '/': (context) =>
            WelcomeScreen(), // Definisikan route untuk WelcomeScreen
        '/home': (context) =>
            HomeScreen(), // Definisikan route untuk HomeScreen
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
