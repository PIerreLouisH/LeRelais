import 'package:flutter/material.dart';
import 'package:les_relais/pages/tab1/pourquoi_donner.dart';
import 'package:les_relais/pages/tab1/comment_donner.dart';
import 'package:les_relais/pages/tab1/que_deviennent_vos_dons.dart';
//import 'package:les_relais/pages/ou_donner.dart';
import 'package:les_relais/pages/contact.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donner vos vêtements'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Pourquoi Donner ?'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WhyDonatePage()),
                );
              },
            ),
            ListTile(
              title: Text('Comment Donner ?'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HowToDonatePage()),
                );
              },
            ),
            ListTile(
              title: Text('Que deviennent vos dons ?'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DonationDetailsPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Ou Donner ?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContactPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE2016B), Color(0xFFE06677)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bienvenue dans la section "Donner vos vêtements" !',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Vous pouvez savoir ici ce que deviennent vos dons mais également où donner!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // You can add more widgets or images here
            ],
          ),
        ),
      ),
    );
  }
}
