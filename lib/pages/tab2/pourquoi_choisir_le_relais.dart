import 'package:flutter/material.dart';
import 'package:les_relais/pages/contact.dart';

class Collectivites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pourquoi Choisir Le Relais ?'),
        backgroundColor: Color(0xFF0769B2), // Use the same color as the tab
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection('Leader de la Collecte et du Tri', [
                'Expertise de 30 ans dans la collecte, le tri, et la valorisation des TLC en France.',
                'Garantie d\'un service de qualité assuré par des professionnels.',
              ]),
              _buildSection('Filière Industrielle Complète', [
                'Le Relais maîtrise toute la chaîne de la valorisation textile en France.',
                '55% de la collecte textile, gestion de 14 centres de tri, et valorisation de 90% des textiles collectés.',
              ]),
              _buildSection('Réduction des Déchets Ménagers', [
                'Solution gratuite, simple, et autonome pour la collecte et la valorisation des TLC sur votre territoire.',
                'Contribution à la réduction des déchets ménagers, alignée sur les objectifs environnementaux.',
              ]),
              _buildSection('Engagement Social', [
                'Soutien à une entreprise engagée dans la création d\'emplois durables pour des personnes en difficulté.',
                'Collaboration étroite avec des associations locales dans le domaine de l\'économie sociale et solidaire.',
              ]),
              _buildSection('Plus de 2 200 Emplois Créés en 30 Ans', [
                'Impact positif sur l\'emploi et la lutte contre l\'exclusion.',
              ]),
              _buildSection('Contactez le Relais', [
                'Pour en savoir plus sur nos activités et notre offre de service, contactez le Relais le plus proche.',
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactPage()),
                    );
                  },
                  child: Text(
                    'Cliquez ici pour contacter le Relais.',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<dynamic> content) {
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
          children: content.map((item) {
            if (item is String) {
              return _buildBulletPoint(item);
            } else if (item is Widget) {
              return item;
            }
            return Container(); // Handle other cases if needed
          }).toList(),
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
