import 'package:flutter/material.dart';

class InsertionDansLesGenes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("L’insertion dans les gènes"),
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
                      'Recruter en priorité des personnes en situation d\'exclusion',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Agréé par l’Etat en tant qu’entreprise d’insertion, il recrute des personnes répondant aux critères de l’Insertion par l’Activité Economique, embauchées sous contrat d’insertion de 2 ans.',
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
                      'La plupart des personnes accueillies au Relais améliorent durablement leur situation, au plan professionnel (retour vers l’emploi, enrichissement de l’expérience professionnelle…) et social (amélioration de la santé, des comportements, des situations administratives et financières, des conditions de logement…).',
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
    home: InsertionDansLesGenes(),
  ));
}
