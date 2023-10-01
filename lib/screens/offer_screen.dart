import 'package:flutter/material.dart';
import 'package:shopnearn_app/widgets/offer_card.dart';

class OfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penawaran Khusus'),
      ),
      backgroundColor: Color.fromARGB(255, 207, 54, 253),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Penawaran saat ini',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  OfferCard(
                    'Diskon Makanan',
                    'Potongan 30% di restoran terpilih.',
                    Colors.orange,
                  ),
                  OfferCard(
                    'Cashback',
                    'Dapatkan cashback hingga Rp 50.000.',
                    Colors.green,
                  ),
                  OfferCard(
                    'Promo Elektronik',
                    'Hemat 20% untuk produk elektronik.',
                    Colors.blue,
                  ),
                  OfferCard(
                    'Diskon Mode',
                    'Potongan harga hingga 50% untuk pakaian.',
                    Colors.red,
                  ),
                  // Tambahkan penawaran lainnya di sini
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}