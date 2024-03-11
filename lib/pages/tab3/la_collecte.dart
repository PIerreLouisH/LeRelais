import 'package:flutter/material.dart';

class CollecteEtValorisationTextile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La collecte et la valorisation textile'),
        backgroundColor: Color(0xFF00A5AB),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Le Relais, un rôle moteur dans le développement de la filière',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'En 1984, la communauté Emmaüs de Bruay-la-Buissière cherche à favoriser l’insertion par le travail de personnes en situation d’exclusion, l’activité de collecte / valorisation textile est rapidement privilégiée. C’est ainsi qu’est créé le Relais.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'En quelques années, le Relais s’est hissé au rang de leader français dans la collecte, le tri et la valorisation des textiles. En 2012, il a collecté 90 000 tonnes, soit 55 % de la collecte en France. Avec ses 28 Relais locaux gérant 16 000 conteneurs sur tout le territoire.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Le choix du Relais : donner la priorité au développement des centres de tri en France',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CollecteEtValorisationTextile(),
  ));
}
