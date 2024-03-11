import 'package:flutter/material.dart';

class RAndDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("R&D"),
        backgroundColor: Color(0xFF00A5AB),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            elevation: 2,
            margin: const EdgeInsets.all(16.0), // Added margin for space
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Le déchet textile, un gisement d\'innovation',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Le relais est en recherche permanente de nouveaux débouchés dans une logique d\'économie circulaire.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Il a ainsi lancé en 2007 Métisse®, un isolant thermique et acoustique pour le bâtiment, conçu à partir de fibres en coton issues de vêtements ne correspondant pas aux critères de la revente en l’état. Deux dérivés, Métisse Flocon et Végémétisse, ont été également développés.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Au printemps 2011, il a contribué au lancement de la marque b.a-ba, qui propose des objets, provenant d’Emmaüs, rénovés par la technique du flocage. Le Relais a également mis en place un projet de valorisation de ses déchets textiles en combustibles pour les cimenteries. Il étudie comment recréer du fil à partir des vêtements issus de la collecte.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Dernier projet en date : le recyclage des chaussures et la petite maroquinerie.',
                    style: TextStyle(fontSize: 16),
                  ),
                  Image.asset(
                    'assets/images/r_d_prix.jpg', // Adjust the path based on your project structure
                    height: 100, // Adjust the height as needed
                    width: double.infinity, // Take the full width of the screen
                    fit: BoxFit.cover, // Adjust the fit based on your preference
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Les Prix de l’Innovation du Salon des Maires récompensent des produits, procédés, matériels, systèmes, services ou techniques innovants. Métisse Eko Baffle® s’est vu décerné la récompense de « Finaliste du prix de l’innovation »',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RAndDPage(),
  ));
}
