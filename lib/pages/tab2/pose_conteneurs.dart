// lib/pages/pose_conteneurs_page.dart

import 'package:flutter/material.dart';

class PoseConteneurs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pose de conteneurs'),
        backgroundColor: Color(0xFF00A5AB), // Use the same color as the tab
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              _buildSection('Sensibiliser vos parties prenantes aux déchets textiles', [
                'Entreprise, bailleur privé, commerçant, grande surface, avez-vous déjà envisagé la mise en place d’une collecte sélective des textiles ?',
                'Le Relais, premier opérateur de collecte et de valorisation des TLC en France, vous propose l’installation d’un conteneur sur votre parking.',
                'Cette démarche ne requiert aucun investissement de votre part : la prestation est totalement gratuite et l’entretien / vidage régulier des conteneurs sont assurés par les professionnels du Relais.',
              ]),

              // Section 2
              _buildBulletPoints([
                'Pour vos clients, salariés ou locataires, c’est l’occasion de profiter d’un nouveau service, d’être sensibilisés à la question des déchets et de contribuer à l’insertion de personnes en difficulté.',
                'Pour votre entreprise, c’est également un moyen d’affirmer votre engagement en matière de responsabilité sociale et de développement durable.',
                'C’est aussi une opportunité en termes de visibilité sur Internet : la géolocalisation des conteneurs sur notre site peut permettre d’orienter vers votre entreprise ou magasin les donateurs cherchant le conteneur le plus proche de chez eux.',
              ]),

              // Section 3
              _buildBulletPoints([
                'Pour en savoir plus:',
                'Pour un accord national, cliquer ici.',
                'Pour un accord local : Contacter le Relais le plus proche',
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

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(text),
    );
  }
}
