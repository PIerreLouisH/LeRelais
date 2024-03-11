import 'package:flutter/material.dart';

class EntreprisePasCommeLesAutres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Une entreprise pas comme les autres'),
        backgroundColor: Color(0xFF00A5AB),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Créer de l\'emploi durable',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                      'Le Relais agit depuis 30 ans pour l’insertion de personnes en situation d’exclusion, par la création d’emplois durables. Membre d’Emmaüs France et de l’Inter Réseaux de la Fibre Solidaire (IRFS), Il a développé plusieurs activités économiques, qui lui ont permis de créer plus de 2 200 emplois.',
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
                      'Parmi celles-ci, l’activité textile a connu un rapide développement. En quelques années, le Relais est devenu le premier opérateur de collecte / valorisation textile en France.',
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
                      'Ce qui différencie le Relais des entreprises classiques ? Chaque centime généré est réinvesti. Le Relais privilégie la création d’emplois locaux. Il a aussi inventé un modèle d’entreprise innovant, l’Entreprise à But Socio-Économique, qui place son développement au service de l’Homme.',
                      style: TextStyle(fontSize: 16),
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
    home: EntreprisePasCommeLesAutres(),
  ));
}
