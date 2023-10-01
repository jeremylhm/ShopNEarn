import 'package:flutter/material.dart';
import 'package:shopnearn_app/screens/offer_screen.dart';
import 'package:shopnearn_app/screens/service_screen.dart';
import 'package:shopnearn_app/screens/profile_screen.dart';

void main() {
  runApp(MaterialApp(
    home: WelcomeScreen(), 
  ));
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _isLogged = false;

  void _login() {
    setState(() {
      _isLogged = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLogged
        ? HomeScreen()
        : Scaffold(
            appBar: AppBar(
              title: Text(
                "Selamat Datang",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Selamat Datang ke ShopN'earn",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: _login,
                    child: Text("Masuk"),
                  ),
                ],
              ),
            ),
          );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "ShopN'earn",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Tambahkan fungsi yang sesuai untuk menavigasi ke profil pengguna.
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Layanan',
                icon: Icon(Icons.shopping_bag),
              ),
              Tab(
                text: 'Penawaran',
                icon: Icon(Icons.local_offer),
              ),
            ],
            labelStyle: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ServiceScreen(),
            OfferScreen(),
          ],
        ),
      ),
    );
  }
}
