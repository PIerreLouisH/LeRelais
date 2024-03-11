import 'package:flutter/material.dart';

class WhyDonatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pourquoi donner ?'),
        backgroundColor: Color(0xFFE2016B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Faites un geste écologique et solidaire !',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Vos vêtements peuvent avoir une deuxième vie solidaire.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Donnez vos vêtements, chaussures, linge de maison au Relais pour créer des emplois durables.',
              style: TextStyle(fontSize: 16),
            ),
            Image.asset(
              'assets/images/banPourquoiDonner.jpg', // Adjust the path based on your project structure
              height: 100, // Adjust the height as needed
              width: double.infinity, // Take the full width of the screen
              fit: BoxFit.cover, // Adjust the fit based on your preference
            ),
            SizedBox(height: 16),
            Text(
              'Protégez l\'environnement : 90 % des textiles collectés sont valorisés.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Contribuez à l’insertion de personnes en difficulté.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Soutenez une entreprise engagée depuis 30 ans dans la lutte contre l’exclusion.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Chaque sac compte !',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WhyDonatePage(),
  ));
}
