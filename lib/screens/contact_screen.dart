import 'package:flutter/material.dart';
import 'contact_card.dart';
class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            CardContent(
              name: 'Salma Fayad',
              email: 'salmaafayad@gmail.com',
              phone: '01576878799',
              image: 'assets/guitar.jpg',
              fav: 'Fav',
            ),
            CardContent(
              name: 'Aya Magdy',
              email: 'ayamagdy@gmail.com',
              phone: '012784565487',
              image: 'assets/gold.jpg',
              fav: 'Fav',
            ),
            CardContent(
              name: 'Hala Ibrahim',
              email: 'halaibrahim@gmail.com',
              phone: '01576878799',
              image: 'assets/world.jpg',
              fav: ' Fav',
            ),
          ],
        ),
    );

  }
}
