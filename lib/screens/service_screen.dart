import 'package:flutter/material.dart';
import 'package:shopnearn_app/screens/FashionScreen.dart';
import 'package:shopnearn_app/screens/FoodScreen.dart';
import 'package:shopnearn_app/screens/MobilScreen.dart';
import 'package:shopnearn_app/screens/PulsaScreen.dart';
import 'package:shopnearn_app/widgets/service_card.dart';

class ServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layanan Populer'),
      ),
      backgroundColor: Color.fromARGB(255, 207, 54, 253),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Pilih Layanan Favorit Anda',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ServiceCard(
                    'Fashion',
                    Icons.shopping_bag,
                    Colors.blue,
                    () {
                      // Tambahkan logika saat ServiceCard "Fashion" diklik
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FashionScreen()), // Ganti FashionScreen dengan layar yang sesuai
                      );
                    },
                  ),
                  ServiceCard(
                    'Mobil',
                    Icons.car_rental,
                    Colors.red,
                    () {
                      // Tambahkan logika saat ServiceCard "Fashion" diklik
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MobilScreen()), // Ganti FashionScreen dengan layar yang sesuai
                      );
                    },
                  ),
                  ServiceCard(
                    'Food',
                    Icons.food_bank,
                    Colors.orange,
                    () {
                      // Tambahkan logika saat ServiceCard "Fashion" diklik
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FoodScreen()), // Ganti FashionScreen dengan layar yang sesuai
                      );
                    },
                  ),
                  ServiceCard(
                    'Pulsa',
                    Icons.phone_android,
                    Colors.green,
                    () {
                      // Tambahkan logika saat ServiceCard "Fashion" diklik
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PulsaScreen()), // Ganti FashionScreen dengan layar yang sesuai
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
