import 'package:flutter/material.dart';
import 'package:les_relais/pages/tab3/une_entreprise.dart';
import 'package:les_relais/pages/tab3/la_collecte.dart';
import 'package:les_relais/pages/tab3/insertion.dart';
import 'package:les_relais/pages/tab3/EBS.dart';
import 'package:les_relais/pages/tab3/rnd.dart';
import 'package:les_relais/pages/tab3/saviez-vous.dart';

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Découvrir le Relais'),
        backgroundColor: Color(0x00a5ab),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Une entreprise pas comme les autres'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EntreprisePasCommeLesAutres()),
                );
              },
            ),
            ListTile(
              title: Text('La valorisation textile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CollecteEtValorisationTextile()),
                );
              },
            ),
            ListTile(
              title: Text('L`insertion dans les gènes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InsertionDansLesGenes()),
                );
              },
            ),
            ListTile(
              title: Text('EBS'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EntrepriseAButSocioEconomique()),
                );
              },
            ),
            ListTile(
              title: Text('R&D'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RAndDPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Le Saviez-Vous?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaviezVousPage()),
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
            colors: [Color(0xFF00BFFF), Color(0xFF00CED1)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bienvenue dans la section "Découvrir le Relais" !',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Explorez les différentes facettes du Relais, de son engagement social à la valorisation textile.',
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