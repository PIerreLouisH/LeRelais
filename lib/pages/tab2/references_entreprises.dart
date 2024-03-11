// lib/pages/reference_entreprise_page.dart

import 'package:flutter/material.dart';

class ReferenceEntreprise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nos références'),
        backgroundColor: Color(0xFF00A5AB), // Use the same color as the tab
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              _buildSection('Vous êtes une entreprise', [
                'Depuis des années, le Relais et les entreprises travaillent main dans la main pour agir durablement en faveur de l’insertion et de la protection de l’environnement.',
                'Chaque partenariat est le fruit d’une démarche sur mesure, pensée sur un mode « gagnant – gagnant ».',
              ]),

              // Section 2
              _buildBulletPoints([
                'Pose de conteneurs sur les parkings : proposez à vos clients ou vos salariés un nouveau service, tout en les sensibilisant à la gestion des déchets.',
              ]),

              // Subsection 1
              _buildSubsection(
                'Parmi les enseignes partenaires :',
                ['Auchan', 'Carrefour', 'Chronodrive', 'Décathlon', 'Défi mode', 'Leclerc', 'Simply Market et bien d\'autres encore!'],
              ),

              // Section 4
              _buildBulletPoints([
                'Venez découvrir « l’envers du décor » en visitant avec vos salariés nos entrepôts et centres de tri et en allant à la rencontre de ceux qui y travaillent.',
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: content.map((item) => _buildParagraph(item)).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildBulletPoints(List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points.map((point) => _buildBulletPoint(point)).toList(),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_forward,
            size: 16,
            color: Colors.blue,
          ),
          SizedBox(width: 8),
          Flexible(
            child: Text(text),
          ),
        ],
      ),
    );
  }

  Widget _buildSubsection(String title, List<String> content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        _buildBulletPoints(content),
      ],
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(text),
    );
  }
}
