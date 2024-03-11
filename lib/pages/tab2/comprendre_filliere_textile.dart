// lib/pages/comprendre_la_filiere_textile_page.dart

import 'package:flutter/material.dart';

class ComprendreTextile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comprendre la filière textile'),
        backgroundColor: Color(0xFF0769B2), // Use the same color as the tab
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              _buildSection('Les débuts de la récupération textile', [
                'Les textiles ont été les premiers déchets récupérés pour être réutilisés.',
                'Transmission générationnelle dans le cadre familial et passage par les chiffonniers et les associations humanitaires.',
                'Avec la société de consommation, la production textile et les déchets induits ont augmenté.',
              ]),

              // Section 2
              _buildSection('Organisation de la filière', [
                'La filière de récupération textile s\'est organisée avec des entreprises de collecte et de valorisation.',
                'Des process industriels ont été développés pour traiter et recycler des volumes de plus en plus importants.',
                'Professionnalisation de l\'activité.',
              ]),

              // Section 3
              _buildSection('Crise et mobilisation au début des années 2000', [
                'Autofinancement des opérateurs grâce à la revente des vêtements.',
                'Crise due à la levée des quotas pour l\'importation de vêtements bon marché.',
                'Mobilisation de Relais, Emmaüs, et Tissons la Solidarité pour assurer la pérennité de l\'activité.',
              ]),

              // Section 4
              _buildSection('Eco-contribution textile et Eco TLC', [
                  'Instauration de l\'éco-contribution textile en 2007, financée par les metteurs en marché.',
                  'Création d\'Eco TLC en 2008, l\'éco-organisme chargé de favoriser la récupération et valorisation des TLC usagés.',
                  'Soutien financier d\'Eco TLC au Relais pour le développement des emplois dans le tri et d\'autres projets de R&D.',
                  ]),

              // Section 5
              _buildSection('Soutien aux collectivités par Eco TLC', [
                'Chaque collectivité mettant en place un point d\'apport volontaire pour 2 000 habitants reçoit un soutien financier d\'Eco TLC.',
                'Soutien de 10 centimes d\'euros par an et par habitant (environ 40 euros la tonne collectée).',
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
          children: content.map((item) => _buildBulletPoint(item)).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.done,
            size: 16,
            color: Colors.green,
          ),
          SizedBox(width: 8),
          Flexible(
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
