import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Function() onTap; // Tambahkan parameter onTap

  ServiceCard(this.title, this.icon, this.color, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: onTap, // Gunakan onTap yang diterima dari parameter
        child: Container(
          width: 120.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 50.0,
                color: Colors.white,
              ),
              SizedBox(height: 5.0),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
