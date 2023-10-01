import 'package:flutter/material.dart';
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
                ServiceCard('Fashion', Icons.shopping_bag, Colors.blue),
                ServiceCard('Mobil', Icons.car_rental, Colors.red),
                ServiceCard('Food', Icons.food_bank, Colors.orange),
                ServiceCard('Pulsa', Icons.phone_android, Colors.green),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}
