import 'package:flutter/material.dart';
import 'package:shopnearn_app/screens/offer_screen.dart';
import 'package:shopnearn_app/screens/profile_screen.dart';
import 'package:shopnearn_app/screens/service_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ShopN'earn",
      theme: ThemeData(
        primarySwatch: Colors.blue, // Ubah primarySwatch sesuai preferensi Anda
        fontFamily: 'Montserrat', // Ganti font sesuai preferensi Anda
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.shop_two_sharp), // Ubah ikon di sini sesuai preferensi Anda
            SizedBox(width: 10.0), // Berikan sedikit spasi antara ikon dan teks
            Text(
              "ShopN'earn",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Ubah warna teks menjadi biru
              ),
            )
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.blue, Colors.transparent], // Ubah warna latar belakang menjadi biru
            ),
          ),
        ),
        centerTitle: true, // Menempatkan judul ke tengah
      ),
      backgroundColor: Colors.blue, // Ubah warna latar belakang body menjadi biru
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ShopN'earn",
              style: TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Ubah warna teks menjadi putih
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.shop_two_sharp), // Ubah ikon di sini sesuai preferensi Anda
              SizedBox(width: 10.0), // Berikan sedikit spasi antara ikon dan teks
              Text(
                "ShopN'earn",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Ubah warna teks menjadi biru
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.of(context).pushNamed('/profile');
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
        backgroundColor: Colors.white, // Ubah warna latar belakang body menjadi putih
        body: TabBarView(
          children: [
            ServiceScreen(), // Pastikan import ServiceScreen telah dilakukan di atas
            OfferScreen(),
            
          ],
        ),
      ),
    );
  }
}
